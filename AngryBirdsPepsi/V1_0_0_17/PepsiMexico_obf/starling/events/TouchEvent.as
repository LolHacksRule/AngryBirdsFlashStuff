package starling.events
{
   import §_-LP§.DisplayObject;
   import §_-LP§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §_-AT§:String = "touch";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §_-AT§ = "touch";
         }
      }
      
      private var §_-V-§:Vector.<§_-aG§>;
      
      private var §_-l7§:Boolean;
      
      private var §_-TA§:Boolean;
      
      public function TouchEvent(param1:String, param2:Vector.<§_-aG§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super(param1,param5);
            if(_loc6_ || param2)
            {
               §§goto(addr33);
            }
            §§goto(addr55);
         }
         addr33:
         this.§_-V-§ = param2;
         if(!_loc7_)
         {
            this.§_-l7§ = param3;
            if(!(_loc7_ && param1))
            {
               addr55:
               this.§_-TA§ = param4;
            }
         }
      }
      
      public function §_-OT§(param1:DisplayObject, param2:String = null) : Vector.<§_-aG§>
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:§_-aG§ = null;
         var _loc5_:* = false;
         var _loc6_:Boolean = false;
         var _loc3_:Vector.<§_-aG§> = new Vector.<§_-aG§>(0);
         for each(_loc4_ in this.§_-V-§)
         {
            §§push(_loc4_.target == param1);
            if(!_loc10_)
            {
               §§push(§§pop());
               if(!(_loc10_ && this))
               {
                  if(!§§pop())
                  {
                     if(!_loc10_)
                     {
                        §§pop();
                        if(!(_loc10_ && this))
                        {
                           addr69:
                           §§push(param1 is DisplayObjectContainer);
                           §§push(param1 is DisplayObjectContainer);
                           if(_loc9_ || param2)
                           {
                              addr84:
                              if(§§pop())
                              {
                                 §§pop();
                                 addr86:
                                 §§push(Boolean((param1 as DisplayObjectContainer).contains(_loc4_.target)));
                                 if(!_loc10_)
                                 {
                                    addr95:
                                    §§push(Boolean(§§pop()));
                                    if(!_loc10_)
                                    {
                                       _loc5_ = §§pop();
                                       §§push(param2);
                                       if(!_loc10_)
                                       {
                                          §§push(§§pop() == null);
                                          §§push(§§pop() == null);
                                          if(_loc9_ || param1)
                                          {
                                             if(!§§pop())
                                             {
                                                addr113:
                                                §§pop();
                                                addr115:
                                                §§push(param2 == _loc4_.phase);
                                                if(!_loc9_)
                                                {
                                                }
                                                addr128:
                                                if(§§pop())
                                                {
                                                   §§pop();
                                                   §§push(_loc6_);
                                                   if(_loc9_)
                                                   {
                                                      addr134:
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                }
                                                if(§§pop())
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      _loc3_.push(_loc4_);
                                                   }
                                                }
                                                continue;
                                             }
                                             _loc6_ = §§pop();
                                             §§push(_loc5_);
                                             if(_loc9_)
                                             {
                                                addr125:
                                                §§push(Boolean(§§pop()));
                                                if(!_loc10_)
                                                {
                                                   §§goto(addr128);
                                                }
                                             }
                                             §§goto(addr134);
                                          }
                                          §§goto(addr128);
                                       }
                                       §§goto(addr115);
                                    }
                                 }
                                 §§goto(addr113);
                              }
                              §§goto(addr95);
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr95);
               }
               §§goto(addr84);
            }
            §§goto(addr125);
         }
         return _loc3_;
      }
      
      public function §_-QB§(param1:DisplayObject, param2:String = null) : §_-aG§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Vector.<§_-aG§> = this.§_-OT§(param1,param2);
         if(!(_loc4_ && param2))
         {
            if(_loc3_.length > 0)
            {
               if(!(_loc4_ && param2))
               {
                  return _loc3_[0];
               }
            }
         }
         return null;
      }
      
      public function get timestamp() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§_-V-§ == null);
            if(!_loc1_)
            {
               §§push(!§§pop());
               if(!_loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || this)
                     {
                        §§goto(addr46);
                     }
                  }
                  §§goto(addr67);
               }
               addr46:
               §§pop();
               if(!(_loc1_ && _loc1_))
               {
                  addr54:
                  §§push(this.§_-V-§.length == 0);
                  if(!(_loc1_ && _loc1_))
                  {
                     addr67:
                     if(!§§pop())
                     {
                        if(!(_loc1_ && this))
                        {
                           return this.§_-V-§[0].timestamp;
                        }
                     }
                  }
                  §§goto(addr67);
               }
               return -1;
            }
            §§goto(addr67);
         }
         §§goto(addr54);
      }
      
      public function get §_-X6§() : Vector.<§_-aG§>
      {
         return this.§_-V-§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§_-l7§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§_-TA§;
      }
   }
}
