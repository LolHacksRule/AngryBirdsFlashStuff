package starling.events
{
   import §1!&§.DisplayObject;
   import §1!&§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §@!;§:String = "touch";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §@!;§ = "touch";
         }
      }
      
      private var §>a§:Vector.<§1B§>;
      
      private var §7F§:Boolean;
      
      private var §^!5§:Boolean;
      
      private var §const§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§1B§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            super(param1,param5);
            loop0:
            while(true)
            {
               §§push(this);
               if(_loc8_)
               {
                  §§pop().§>a§ = Boolean(param2) ? param2 : new Vector.<§1B§>(0);
                  addr67:
                  while(true)
                  {
                     this.§7F§ = param3;
                     continue loop0;
                  }
                  addr67:
               }
               §§goto(addr55);
            }
         }
         §§goto(addr67);
      }
      
      public function §!!K§(param1:DisplayObject, param2:String = null) : Vector.<§1B§>
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:§1B§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§1B§> = new Vector.<§1B§>(0);
         var _loc4_:int = this.§>a§.length;
         §§push(0);
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         while(_loc5_ < _loc4_)
         {
            _loc6_ = this.§>a§[_loc5_];
            if(_loc10_ || param1)
            {
               §§push(_loc6_.target == param1);
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 while(true)
                                 {
                                    §§push(param1 is DisplayObjectContainer);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr325:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          addr326:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             addr327:
                                             while(_loc10_)
                                             {
                                                if(§§pop())
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr331:
                                                      while(true)
                                                      {
                                                         §§push((param1 as DisplayObjectContainer).contains(_loc6_.target));
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            continue loop11;
                                                            addr245:
                                                            while(_loc10_ || this)
                                                            {
                                                               continue loop7;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§goto(addr300);
                           }
                        }
                     }
                  }
                  if(!(_loc10_ || _loc3_))
                  {
                     continue;
                  }
                  §§goto(addr229);
               }
            }
            §§goto(addr318);
         }
         return _loc3_;
      }
      
      public function §2r§(param1:DisplayObject, param2:String = null) : §1B§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Vector.<§1B§> = this.§!!K§(param1,param2);
         if(_loc4_ || param2)
         {
            if(_loc3_.length > 0)
            {
               if(_loc4_ || param1)
               {
                  return _loc3_[0];
               }
            }
         }
         return null;
      }
      
      public function §]!@§(param1:DisplayObject) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Vector.<§1B§> = null;
         var _loc3_:* = 0;
         if(_loc5_)
         {
            if(this.§2r§(param1) == null)
            {
               if(_loc5_)
               {
                  §§goto(addr31);
               }
            }
            _loc2_ = this.§!!K§(param1);
            if(!(_loc4_ && _loc2_))
            {
               _loc3_ = int(_loc2_.length - 1);
            }
            do
            {
               §§push(_loc3_);
               if(!_loc4_)
               {
                  if(§§pop() < 0)
                  {
                     if(_loc4_ && this)
                     {
                        continue;
                     }
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(false);
                        if(_loc5_)
                        {
                           return §§pop();
                        }
                        addr121:
                        return §§pop();
                     }
                  }
                  else if(_loc2_[_loc3_].phase != §0M§.§!!C§)
                  {
                     break;
                  }
                  §§push(_loc3_);
                  if(!_loc4_)
                  {
                     §§push(§§pop() - 1);
                     if(_loc5_ || param1)
                     {
                        §§push(int(§§pop()));
                     }
                  }
               }
               _loc3_ = §§pop();
            }
            while(!_loc4_);
            
            §§goto(addr121);
            §§push(true);
         }
         addr31:
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§const§;
      }
      
      public function get § !"§() : Vector.<§1B§>
      {
         return this.§>a§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§7F§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§^!5§;
      }
   }
}
