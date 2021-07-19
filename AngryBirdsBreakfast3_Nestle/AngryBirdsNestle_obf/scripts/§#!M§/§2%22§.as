package §#!M§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §2"§ extends EventDispatcher implements §,!Y§
   {
       
      
      private var §=",§:Number = 0;
      
      private var §2!X§:Number;
      
      private var §7"#§:Function;
      
      private var §9!S§:Array;
      
      private var §!I§:int = 1;
      
      public function §2"§(param1:Function, param2:Number, param3:Array = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
         }
         loop0:
         do
         {
            this.§7"#§ = param1;
            while(true)
            {
               this.§2!X§ = Math.max(param2,0.0001);
               while(_loc5_ || param2)
               {
                  this.§9!S§ = param3;
                  if(_loc5_ || param2)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!(_loc5_ || this));
         
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§=",§);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            this.§=",§ = Math.min(this.§2!X§,this.§=",§ + param1);
            loop0:
            while(true)
            {
               §§push(_loc2_);
               loop1:
               while(true)
               {
                  §§push(this.§2!X§);
                  addr172:
                  while(true)
                  {
                     §§push(§§pop() < §§pop());
                     if(_loc3_)
                     {
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop4:
                                 while(true)
                                 {
                                    this.§7"#§.apply(null,this.§9!S§);
                                    loop5:
                                    while(true)
                                    {
                                       if(this.§!I§ <= 1)
                                       {
                                          dispatchEvent(new Event(Event.§2"$§));
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             if(!_loc4_)
                                             {
                                                if(_loc3_)
                                                {
                                                   break loop3;
                                                }
                                                continue loop4;
                                             }
                                             loop6:
                                             while(true)
                                             {
                                                if(_loc3_ || this)
                                                {
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   addr117:
                                                   while(_loc3_ || _loc2_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop5;
                                                }
                                                addr136:
                                                while(true)
                                                {
                                                   this.§=",§ = 0;
                                                   continue loop6;
                                                }
                                             }
                                             if(!(_loc3_ || _loc2_))
                                             {
                                                continue loop1;
                                             }
                                             §§push(this);
                                             §§push(_loc2_);
                                             if(_loc3_ || _loc2_)
                                             {
                                                §§push(param1);
                                                if(_loc3_ || this)
                                                {
                                                   addr74:
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc3_)
                                                   {
                                                      §§push(this.§2!X§);
                                                   }
                                                   §§pop().advanceTime(§§pop());
                                                   break;
                                                }
                                                §§push(§§pop() - §§pop());
                                             }
                                             §§goto(addr74);
                                          }
                                          break;
                                       }
                                       §§goto(addr117);
                                    }
                                    break loop3;
                                 }
                              }
                              §§push(§§pop() >= §§pop());
                              addr151:
                              break;
                              if(!(_loc4_ && _loc3_))
                              {
                                 continue;
                              }
                              addr177:
                              while(true)
                              {
                                 §§pop();
                                 continue loop1;
                              }
                              addr177:
                           }
                           return;
                           addr159:
                        }
                     }
                     §§goto(addr177);
                  }
               }
            }
         }
         §§goto(addr136);
      }
      
      public function get §^+§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§!I§ == 1);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     §§pop();
                     addr60:
                     return this.§=",§ >= this.§2!X§;
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public function get § "-§() : Number
      {
         return this.§2!X§;
      }
      
      public function get §[Q§() : Number
      {
         return this.§=",§;
      }
      
      public function get repeatCount() : int
      {
         return this.§!I§;
      }
      
      public function set repeatCount(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§!I§ = param1;
         }
      }
   }
}
