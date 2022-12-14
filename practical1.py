'''Implement Breadth First Search Algorithm in python without using any library and user input'''

class Graph:
    def __init__(self,graph):
        self.graph = graph
        self.visited = []
        self.queue = []

    def bfs(self, start):
        self.visited.append(start)
        self.queue.append(start)

        while self.queue:
            m = self.queue.pop(0)
            print (m, end = " ")

            for neighbour in self.graph[m]:
                if neighbour not in self.visited:
                    self.visited.append(neighbour)
                    self.queue.append(neighbour)

g = { "P" : ["Q","R"],
      "Q" : ["S", "T"],
      "R" : ["U"],
      "S" : [],
      "T" : ["V"],
      "U" : [],
      "V" : []
    }

graph = Graph(g)

graph.bfs("P")


#output explination
#P Q R S T U V

#P is the starting node
#Q R are the neighbours of P
#S T U are the neighbours of Q
#V is the neighbour of T
#U is the neighbour of R
