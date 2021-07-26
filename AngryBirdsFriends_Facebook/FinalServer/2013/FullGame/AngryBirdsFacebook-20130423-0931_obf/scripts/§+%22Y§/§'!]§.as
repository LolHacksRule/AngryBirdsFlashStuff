package §+"Y§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §'!]§ extends EventDispatcher implements §]g§
   {
       
      
      private var §4!;§:Number = 0;
      
      private var §6!<§:Number;
      
      private var §"!C§:Function;
      
      private var §#B§:Array;
      
      private var §7f§:int = 1;
      
      public function §'!]§(param1:Function, param2:Number, param3:Array = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            super();
            while(true)
            {
               this.§"!C§ = param1;
               while(_loc4_)
               {
                  while(_loc4_ || param2)
                  {
                     this.§#B§ = param3;
                     if(!_loc5_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§6!<§ = Math.max(param2,0.0001);
            §§goto(addr62);
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§4!;§);
         if(_loc3_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            this.§4!;§ = Math.min(this.§6!<§,this.§4!;§ + param1);
            loop0:
            while(true)
            {
               §§push(_loc2_);
               while(true)
               {
                  §§push(this.§6!<§);
                  addr192:
                  addr203:
                  while(true)
                  {
                     §§push(§§pop() < §§pop());
                     addr193:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop6:
                           while(§§pop())
                           {
                              loop7:
                              while(true)
                              {
                                 this.§"!C§.apply(null,this.§#B§);
                                 while(true)
                                 {
                                    if(this.§7f§ > 1)
                                    {
                                       if(!_loc4_)
                                       {
                                          continue;
                                       }
                                    }
                                    else
                                    {
                                       dispatchEvent(new Event(Event.§'J§));
                                       if(!(_loc3_ || this))
                                       {
                                          break;
                                       }
                                       if(_loc3_ || param1)
                                       {
                                          break loop6;
                                       }
                                    }
                                    addr139:
                                    this.§4!;§ = 0;
                                    continue loop7;
                                 }
                                 addr83:
                                 addr90:
                                 while(!(_loc3_ || this))
                                 {
                                    continue loop7;
                                 }
                                 break loop6;
                              }
                              continue loop0;
                           }
                           return;
                           addr169:
                        }
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                     }
                  }
                  §§push(this.§4!;§);
                  if(_loc4_ && _loc2_)
                  {
                     continue;
                  }
                  §§push(this.§6!<§);
                  if(_loc3_)
                  {
                     §§push(§§pop() >= §§pop());
                     if(_loc3_ || _loc3_)
                     {
                        if(_loc4_ && param1)
                        {
                           §§goto(addr193);
                        }
                        §§goto(addr169);
                     }
                     §§goto(addr195);
                  }
                  else
                  {
                     §§goto(addr192);
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      public function get §[9§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§7f§ == 1);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr39:
                     §§pop();
                     return this.§4!;§ >= this.§6!<§;
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      public function get §4!3§() : Number
      {
         return this.§6!<§;
      }
      
      public function get §42§() : Number
      {
         return this.§4!;§;
      }
      
      public function get §6![§() : int
      {
         return this.§7f§;
      }
      
      public function set §6![§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7f§ = param1;
         }
      }
   }
}
