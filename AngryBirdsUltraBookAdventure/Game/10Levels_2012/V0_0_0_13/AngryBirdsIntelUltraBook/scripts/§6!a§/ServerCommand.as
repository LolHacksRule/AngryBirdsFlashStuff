package §6!a§
{
   import §6b§.Log;
   
   public class ServerCommand
   {
       
      
      private var §;3§:String;
      
      private var §-H§:Vector.<Function>;
      
      private var §3!#§:Boolean;
      
      public function ServerCommand(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§;3§ = param1;
               loop1:
               while(true)
               {
                  this.§3!#§ = param3;
                  loop2:
                  while(param2 != null)
                  {
                     if(_loc5_ || param2)
                     {
                        continue loop0;
                     }
                     addr82:
                     loop3:
                     while(_loc5_)
                     {
                        while(true)
                        {
                           this.addCallback(param2);
                           if(_loc5_)
                           {
                              if(_loc5_ || param2)
                              {
                                 break loop2;
                              }
                              continue loop2;
                              continue loop2;
                           }
                           continue loop3;
                        }
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr84);
      }
      
      public function §-!`§() : String
      {
         return this.§;3§;
      }
      
      public function §4%§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§3!#§ = param1;
         }
      }
      
      public function §4Y§() : Boolean
      {
         return this.§3!#§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(this.§-H§ == null)
            {
               while(true)
               {
                  this.§-H§ = new Vector.<Function>();
                  addr79:
                  while(true)
                  {
                  }
               }
               addr71:
            }
            while(this.§-H§.indexOf(param1) == -1)
            {
               if(!_loc3_)
               {
                  if(!_loc3_)
                  {
                     this.§-H§.push(param1);
                  }
                  else
                  {
                     §§goto(addr71);
                  }
               }
               if(!_loc3_)
               {
                  addr66:
                  break;
               }
               §§goto(addr79);
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function §in§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§-H§.indexOf(param1) > -1)
            {
               if(!_loc3_)
               {
                  this.§-H§.splice(this.§-H§.indexOf(param1),1);
               }
            }
         }
      }
      
      public function §"!-§() : Vector.<Function>
      {
         return this.§-H§;
      }
   }
}
