package §0#P§
{
   public class §<`§ extends §3"V§
   {
       
      
      public var access:String;
      
      public var type:String;
      
      public var declaredBy:String;
      
      public function §<`§(param1:XML)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               name = param1.@name;
               while(!(_loc3_ && _loc2_))
               {
                  this.access = param1.@access;
                  loop2:
                  while(!(_loc3_ && _loc3_))
                  {
                     this.type = param1.@type;
                     while(true)
                     {
                        this.declaredBy = param1.@declaredBy;
                        if(_loc2_)
                        {
                           if(_loc2_ || this)
                           {
                              break;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      public function toString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("Acc: " + name);
         if(_loc1_ || this)
         {
            §§push(":");
            if(_loc1_ || _loc2_)
            {
               §§push(§§pop() + §§pop());
               if(!(_loc2_ && _loc2_))
               {
                  §§push(this.access);
                  if(_loc1_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc2_)
                     {
                        §§goto(addr59);
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr79);
               }
               addr59:
               §§push(":");
               if(_loc1_ || _loc1_)
               {
                  addr67:
                  §§push(§§pop() + §§pop());
                  if(!_loc2_)
                  {
                     addr70:
                     §§push(this.type);
                     if(_loc1_ || this)
                     {
                        addr79:
                        §§push(§§pop() + §§pop());
                        if(!_loc1_)
                        {
                        }
                        §§goto(addr99);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§goto(addr99);
               }
               addr99:
               §§push(§§pop() + ":");
               if(_loc1_)
               {
                  addr96:
                  return this.declaredBy;
               }
            }
            §§goto(addr67);
         }
         §§goto(addr96);
      }
   }
}
