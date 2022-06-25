package starling.events
{
   import §9W§.DisplayObject;
   import §9W§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §?6§:String = "touch";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §?6§ = "touch";
         }
      }
      
      private var §9!+§:Vector.<§^!@§>;
      
      private var §1]§:Boolean;
      
      private var §`!2§:Boolean;
      
      private var §]!%§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§^!@§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && param2))
         {
            super(param1,param5);
            if(_loc8_)
            {
               §§push(this);
               if(_loc8_)
               {
                  §§pop().§9!+§ = !!param2 ? param2 : new Vector.<§^!@§>(0);
                  if(!(_loc9_ && param1))
                  {
                     this.§1]§ = param3;
                     if(_loc8_)
                     {
                        this.§`!2§ = param4;
                        if(_loc8_ || param2)
                        {
                           addr77:
                           this.§]!%§ = -1;
                           §§goto(addr80);
                        }
                        addr80:
                        var _loc6_:int = param2.length;
                        var _loc7_:int = 0;
                        while(_loc7_ < _loc6_)
                        {
                           if(param2[_loc7_].timestamp > this.§]!%§)
                           {
                              if(_loc8_ || this)
                              {
                                 this.§]!%§ = param2[_loc7_].timestamp;
                                 if(!_loc8_)
                                 {
                                 }
                                 break;
                              }
                              continue;
                           }
                           _loc7_++;
                           if(!_loc8_)
                           {
                              break;
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr77);
               }
               §§goto(addr34);
            }
         }
         §§goto(addr77);
      }
      
      public function §@5§(param1:DisplayObject, param2:String = null) : Vector.<§^!@§>
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:§^!@§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§^!@§> = new Vector.<§^!@§>(0);
         var _loc4_:int = this.§9!+§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            §§push((_loc6_ = this.§9!+§[_loc5_]).target == param1);
            §§push((_loc6_ = this.§9!+§[_loc5_]).target == param1);
            if(_loc10_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(!(_loc9_ && param1))
                  {
                     §§pop();
                     if(!_loc9_)
                     {
                        §§push(param1 is DisplayObjectContainer);
                        if(_loc10_ || this)
                        {
                           §§push(§§pop());
                           if(_loc10_)
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 if(_loc10_ || param1)
                                 {
                                    §§push((param1 as DisplayObjectContainer).contains(_loc6_.target));
                                    if(_loc10_ || _loc3_)
                                    {
                                       addr117:
                                       _loc7_ = Boolean(§§pop());
                                       addr116:
                                       §§push(param2);
                                       if(_loc10_)
                                       {
                                          §§push(§§pop() == null);
                                          §§push(§§pop() == null);
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             if(!§§pop())
                                             {
                                                §§pop();
                                                addr134:
                                                §§push(param2 == _loc6_.phase);
                                                if(_loc10_)
                                                {
                                                   addr139:
                                                   _loc8_ = §§pop();
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      addr148:
                                                      §§push(_loc7_);
                                                      if(!(_loc9_ && this))
                                                      {
                                                         addr156:
                                                         §§push(Boolean(§§pop()));
                                                         if(!_loc9_)
                                                         {
                                                            addr170:
                                                            if(§§pop())
                                                            {
                                                               if(_loc10_ || this)
                                                               {
                                                                  addr178:
                                                                  §§pop();
                                                                  if(_loc10_)
                                                                  {
                                                                     addr183:
                                                                     addr182:
                                                                     addr181:
                                                                     if(_loc8_)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addr186:
                                                                        _loc3_.push(_loc6_);
                                                                        if(!_loc10_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                     _loc5_++;
                                                                     continue;
                                                                  }
                                                                  §§goto(addr186);
                                                               }
                                                            }
                                                            §§goto(addr183);
                                                         }
                                                         §§goto(addr182);
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                   §§goto(addr181);
                                                }
                                                §§goto(addr178);
                                             }
                                             §§goto(addr139);
                                          }
                                          §§goto(addr170);
                                       }
                                       §§goto(addr134);
                                    }
                                    §§goto(addr183);
                                 }
                                 §§goto(addr148);
                              }
                              §§goto(addr116);
                           }
                           §§goto(addr170);
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr156);
               }
               §§goto(addr117);
            }
            §§goto(addr170);
         }
         return _loc3_;
      }
      
      public function §';§(param1:DisplayObject, param2:String = null) : §^!@§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Vector.<§^!@§> = this.§@5§(param1,param2);
         if(_loc4_ || param2)
         {
            if(_loc3_.length > 0)
            {
               if(_loc4_ || _loc3_)
               {
                  return _loc3_[0];
               }
            }
         }
         return null;
      }
      
      public function §8"§(param1:DisplayObject) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Vector.<§^!@§> = null;
         var _loc3_:* = 0;
         if(_loc5_ || _loc3_)
         {
            if(this.§';§(param1) == null)
            {
               if(!(_loc4_ && _loc2_))
               {
                  return false;
               }
            }
         }
         _loc2_ = this.§@5§(param1);
         if(_loc5_ || param1)
         {
            _loc3_ = int(_loc2_.length - 1);
         }
         loop0:
         while(true)
         {
            §§push(_loc3_);
            while(§§pop() >= 0)
            {
               if(_loc2_[_loc3_].phase != §<e§.§4[§)
               {
                  if(!_loc4_)
                  {
                     §§push(true);
                     if(!(_loc4_ && param1))
                     {
                        return §§pop();
                     }
                     §§goto(addr120);
                  }
               }
               else
               {
                  §§push(_loc3_);
                  if(_loc5_ || _loc2_)
                  {
                     §§push(§§pop() - 1);
                     if(_loc4_)
                     {
                        continue;
                     }
                  }
                  _loc3_ = §§pop();
                  if(!_loc5_)
                  {
                     break;
                  }
               }
               continue loop0;
            }
            addr120:
            return §§pop();
         }
      }
      
      public function get timestamp() : Number
      {
         return this.§]!%§;
      }
      
      public function get §]!2§() : Vector.<§^!@§>
      {
         return this.§9!+§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§1]§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§`!2§;
      }
   }
}
