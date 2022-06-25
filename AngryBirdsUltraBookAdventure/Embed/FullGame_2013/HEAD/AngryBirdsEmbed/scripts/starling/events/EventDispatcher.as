package starling.events
{
   import §&o§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §8F§:Dictionary;
      
      public function EventDispatcher()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            if(this.§8F§ == null)
            {
               if(_loc5_)
               {
                  this.§8F§ = new Dictionary();
               }
            }
         }
         var _loc3_:Vector.<Function> = this.§8F§[param1];
         if(!(_loc4_ && this))
         {
            if(_loc3_ == null)
            {
               if(_loc5_ || param2)
               {
                  this.§8F§[param1] = new <Function>[param2];
                  if(_loc4_ && param2)
                  {
                  }
                  §§goto(addr115);
               }
            }
            else
            {
               this.§8F§[param1] = _loc3_.concat(new <Function>[param2]);
            }
         }
         addr115:
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc4_)
         {
            §§pop().§§slot[3] = null;
            if(!_loc4_)
            {
               addr30:
               var type:String = param1;
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§newactivation());
                  if(_loc5_ || param2)
                  {
                     §§pop().§§slot[2] = param2;
                     if(_loc5_ || param2)
                     {
                        if(this.§8F§)
                        {
                           addr69:
                           var listeners:Vector.<Function> = this.§8F§[type];
                           if(_loc5_)
                           {
                              if(!listeners)
                              {
                              }
                              §§goto(addr118);
                           }
                           listeners = listeners.filter(function(param1:Function, ... rest):Boolean
                           {
                              return param1 != listener;
                           });
                           addr100:
                           if(listeners.length == 0)
                           {
                              addr104:
                              delete this.§8F§[type];
                              addr110:
                           }
                           else
                           {
                              this.§8F§[type] = listeners;
                           }
                        }
                        addr118:
                        return;
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr100);
               }
               §§goto(addr104);
            }
            §§goto(addr69);
         }
         §§goto(addr30);
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(Boolean(param1));
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     §§pop();
                     if(_loc2_)
                     {
                        §§push(Boolean(this.§8F§));
                        if(_loc2_)
                        {
                           addr64:
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                              }
                           }
                           else
                           {
                              this.§8F§ = null;
                           }
                           §§goto(addr83);
                        }
                        §§goto(addr71);
                     }
                     addr71:
                     §§pop();
                     if(!(_loc3_ && param1))
                     {
                        §§goto(addr83);
                     }
                     addr83:
                     return;
                     §§push(delete this.§8F§[param1]);
                  }
               }
               §§goto(addr64);
            }
            §§goto(addr71);
         }
         §§goto(addr83);
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         if(!_loc9_)
         {
            var _loc2_:Vector.<Function> = !!this.§8F§ ? this.§8F§[param1.type] : null;
            if(!_loc9_)
            {
               §§push(_loc2_ == null);
               if(!_loc9_)
               {
                  if(§§pop())
                  {
                     if(_loc10_)
                     {
                        §§pop();
                        if(!_loc9_)
                        {
                           addr52:
                           §§push(param1.bubbles);
                           if(_loc10_ || _loc3_)
                           {
                              addr62:
                              if(!§§pop())
                              {
                                 if(_loc10_)
                                 {
                                    return;
                                 }
                              }
                           }
                           §§goto(addr62);
                        }
                        var _loc3_:EventDispatcher = param1.target;
                        if(!(_loc9_ && param1))
                        {
                           §§push(_loc3_ == null);
                           if(!(_loc9_ && _loc3_))
                           {
                              if(!§§pop())
                              {
                                 if(_loc10_)
                                 {
                                    §§pop();
                                    if(_loc10_)
                                    {
                                       §§push(param1.currentTarget == null);
                                       if(_loc10_ || this)
                                       {
                                          addr105:
                                          §§push(!§§pop());
                                          if(!_loc9_)
                                          {
                                             addr108:
                                             if(§§pop())
                                             {
                                                if(!(_loc9_ && this))
                                                {
                                                   param1.§'^§(this);
                                                   addr119:
                                                   §§push(false);
                                                }
                                             }
                                             §§goto(addr119);
                                          }
                                          var _loc4_:* = §§pop();
                                          if(!(_loc9_ && param1))
                                          {
                                             if(_loc2_ == null)
                                             {
                                                addr132:
                                                §§push(0);
                                                if(_loc10_ || _loc3_)
                                                {
                                                }
                                                addr161:
                                                §§push(int(§§pop()));
                                             }
                                             else
                                             {
                                                §§push(int(_loc2_.length));
                                                if(_loc10_ || this)
                                                {
                                                   §§goto(addr161);
                                                }
                                             }
                                             var _loc5_:*;
                                             §§push(_loc5_ = §§pop());
                                             if(!(_loc9_ && _loc2_))
                                             {
                                                if(§§pop() != 0)
                                                {
                                                   if(_loc10_ || param1)
                                                   {
                                                      param1.§8!I§(this);
                                                      if(!_loc9_)
                                                      {
                                                         addr186:
                                                         _loc6_ = 0;
                                                         addr185:
                                                      }
                                                      do
                                                      {
                                                         if(_loc6_ >= _loc5_)
                                                         {
                                                            if(!(_loc9_ && _loc3_))
                                                            {
                                                               addr230:
                                                               §§push(!_loc4_);
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!_loc9_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        addr243:
                                                                        §§pop();
                                                                        §§push(param1.bubbles);
                                                                        if(!(_loc9_ && param1))
                                                                        {
                                                                           addr254:
                                                                           §§push(Boolean(§§pop()));
                                                                           §§push(Boolean(§§pop()));
                                                                           if(_loc10_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 addr258:
                                                                                 §§pop();
                                                                                 §§goto(addr325);
                                                                              }
                                                                              addr265:
                                                                              if(§§pop() && this is DisplayObject)
                                                                              {
                                                                                 if(_loc10_ || _loc3_)
                                                                                 {
                                                                                    §§push((_loc7_ = this as DisplayObject).parent);
                                                                                    if(!(_loc9_ && param1))
                                                                                    {
                                                                                       if(§§pop() != null)
                                                                                       {
                                                                                          if(!(_loc9_ && _loc3_))
                                                                                          {
                                                                                             param1.§8!I§(null);
                                                                                          }
                                                                                          §§goto(addr320);
                                                                                       }
                                                                                       addr320:
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          §§push(_loc7_.parent);
                                                                                       }
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr325);
                                                                                    }
                                                                                    §§pop().dispatchEvent(param1);
                                                                                 }
                                                                                 addr325:
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§push(!param1.§2S§);
                                                                                 }
                                                                                 return;
                                                                              }
                                                                              §§goto(addr320);
                                                                           }
                                                                           §§goto(addr265);
                                                                        }
                                                                        §§goto(addr258);
                                                                     }
                                                                     §§goto(addr254);
                                                                  }
                                                                  §§goto(addr265);
                                                               }
                                                               §§goto(addr243);
                                                            }
                                                            §§goto(addr258);
                                                         }
                                                         else
                                                         {
                                                            _loc2_[_loc6_](param1);
                                                            if(!param1.§4n§)
                                                            {
                                                               continue;
                                                            }
                                                            _loc4_ = true;
                                                            if(!(_loc9_ && _loc2_))
                                                            {
                                                               §§goto(addr230);
                                                            }
                                                         }
                                                         §§goto(addr267);
                                                      }
                                                      while(_loc6_++, !(_loc9_ && param1));
                                                      
                                                      param1.§'^§(_loc3_);
                                                      §§goto(addr258);
                                                   }
                                                   §§goto(addr185);
                                                }
                                                §§goto(addr230);
                                             }
                                             §§goto(addr186);
                                          }
                                          §§goto(addr132);
                                       }
                                    }
                                    §§goto(addr119);
                                 }
                                 §§goto(addr105);
                              }
                              §§goto(addr108);
                           }
                           §§goto(addr105);
                        }
                        §§goto(addr119);
                     }
                  }
               }
               §§goto(addr62);
            }
            §§goto(addr52);
         }
         §§goto(addr27);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§8F§ == null);
            if(_loc3_)
            {
               §§push(!§§pop());
               if(!_loc2_)
               {
                  §§goto(addr43);
               }
               §§goto(addr47);
            }
            addr43:
            if(§§pop())
            {
               if(!_loc2_)
               {
                  addr47:
                  §§pop();
                  §§push(param1 in this.§8F§);
               }
            }
            return §§pop();
         }
         §§goto(addr47);
      }
      
      public function §'+§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(!_loc6_)
         {
            if(this.§8F§)
            {
               addr47:
               for(_loc2_ in this.§8F§)
               {
                  if(_loc5_ || _loc2_)
                  {
                     _loc1_.push(_loc2_);
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr47);
      }
   }
}
