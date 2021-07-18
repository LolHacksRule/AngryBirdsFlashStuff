package § "!§
{
   import §!"@§.§]"1§;
   import §,%§.§<D§;
   import §4y§.§0"H§;
   import §4y§.Item;
   import §]!w§.§'G§;
   import §]!w§.§[!X§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   
   public class §""X§ implements §04§
   {
       
      
      private var §^!I§:Array;
      
      private var §>!%§:Boolean = false;
      
      public function §""X§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§^!I§ = [];
         }
         do
         {
            super();
         }
         while(_loc1_);
         
      }
      
      public function §@]§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var object:Object = null;
         if(!_loc6_)
         {
            this.§>!%§ = true;
         }
         for each(object in this.§^!I§)
         {
            if(_loc5_ || this)
            {
               try
               {
                  this.render(object.avatarString,object.callBack,object.imageSize,object.ignoreBackground);
               }
               catch(e:Error)
               {
                  continue;
               }
            }
         }
      }
      
      public function §#h§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§>!%§ = true;
         }
      }
      
      public function §6"Y§(param1:§[!X§) : void
      {
      }
      
      public function render(param1:String, param2:Function, param3:int = 50, param4:Boolean = false, param5:Object = null, param6:§[!X§ = null, param7:int = 0) : BitmapData
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc8_:* = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Array = null;
         var _loc11_:§'G§ = null;
         var _loc12_:BitmapData = null;
         var _loc13_:Item = null;
         var _loc14_:§0"H§ = null;
         var _loc15_:Item = null;
         var _loc16_:Matrix = null;
         if(!(_loc20_ && param2))
         {
            if(!this.§>!%§)
            {
               if(_loc19_)
               {
                  §§push(this.§^!I§);
                  if(_loc19_ || this)
                  {
                     §§pop().push({
                        "avatarString":param1,
                        "callBack":param2,
                        "imageSize":param3,
                        "ignoreBackground":param4
                     });
                     addr86:
                     addr121:
                  }
                  else
                  {
                     addr125:
                     _loc10_ = §§pop();
                     _loc11_ = new §'G§();
                     if(_loc19_ || param2)
                     {
                        if(!param6)
                        {
                           addr140:
                           for each(_loc13_ in _loc10_)
                           {
                              if(_loc13_.§;"V§ == "CategoryBirds")
                              {
                                 _loc14_ = §]"1§.§&"5§.characters.§>"!§(_loc13_.§&N§);
                                 param6 = new §[!X§(_loc14_);
                              }
                           }
                           if(!(_loc20_ && param3))
                           {
                              addr180:
                              _loc11_.§2!Y§(param6,100,170 + param7,true);
                           }
                           _loc12_ = new BitmapData(param3 + _loc8_,param3 + _loc8_ + param7,true,16777215);
                           if(_loc19_)
                           {
                              if(param6)
                              {
                                 if(!(_loc20_ && param1))
                                 {
                                    if(param4)
                                    {
                                       if(_loc19_ || param2)
                                       {
                                          param6.§2!1§();
                                          if(_loc19_ || param1)
                                          {
                                             addr241:
                                             var _loc17_:int = 0;
                                             if(_loc19_)
                                             {
                                                for each(_loc15_ in _loc10_)
                                                {
                                                   §§push(_loc15_.§;"V§);
                                                   if(!(_loc20_ && param1))
                                                   {
                                                      §§push("CategoryBirds");
                                                      if(!(_loc20_ && param3))
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(!_loc20_)
                                                         {
                                                            §§push(!§§pop());
                                                            if(!(_loc20_ && this))
                                                            {
                                                               addr283:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc19_)
                                                                  {
                                                                     addr287:
                                                                     §§pop();
                                                                     if(_loc19_)
                                                                     {
                                                                        §§push(_loc15_.§;"V§);
                                                                        if(_loc19_ || this)
                                                                        {
                                                                           addr299:
                                                                           §§push("CategoryBackgrounds");
                                                                           if(!_loc20_)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              if(_loc19_ || this)
                                                                              {
                                                                                 addr311:
                                                                                 addr310:
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       addr314:
                                                                                       param6.§]"A§(_loc15_);
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§push(_loc15_.§;"V§);
                                                                              }
                                                                              §§goto(addr311);
                                                                           }
                                                                           addr322:
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              if(_loc19_ || param3)
                                                                              {
                                                                                 param6.§^!'§(_loc15_.§&N§);
                                                                              }
                                                                           }
                                                                           continue;
                                                                        }
                                                                        §§goto(addr322);
                                                                        §§push("CategoryBackgrounds");
                                                                     }
                                                                     §§goto(addr314);
                                                                  }
                                                                  §§goto(addr310);
                                                               }
                                                               §§goto(addr311);
                                                            }
                                                            §§goto(addr287);
                                                         }
                                                         §§goto(addr283);
                                                      }
                                                      §§goto(addr322);
                                                   }
                                                   §§goto(addr299);
                                                }
                                             }
                                             if(_loc20_)
                                             {
                                             }
                                             §§goto(addr385);
                                          }
                                          §§goto(addr355);
                                       }
                                       if(param5)
                                       {
                                          if(_loc19_ || param2)
                                          {
                                             param6.§0!8§().gotoAndStop(param5);
                                             if(!_loc20_)
                                             {
                                                addr355:
                                                (_loc16_ = new Matrix()).scale(_loc9_,_loc9_);
                                                if(!_loc20_)
                                                {
                                                   _loc16_.translate(_loc8_ / 2,_loc8_ / 2);
                                                   if(_loc20_)
                                                   {
                                                   }
                                                   §§goto(addr383);
                                                }
                                                _loc12_.draw(_loc11_,_loc16_,null,null,null,true);
                                                addr383:
                                                _loc11_.dispose();
                                                §§goto(addr385);
                                             }
                                             addr385:
                                             _loc11_ = null;
                                             if(_loc19_ || this)
                                             {
                                                §§push(param2);
                                                if(!(_loc20_ && this))
                                                {
                                                   if(§§pop() != null)
                                                   {
                                                      if(_loc19_ || this)
                                                      {
                                                         addr423:
                                                         param2(_loc12_);
                                                         if(!(_loc19_ || this))
                                                         {
                                                            §§goto(addr436);
                                                         }
                                                      }
                                                   }
                                                   return _loc12_;
                                                }
                                                §§goto(addr423);
                                             }
                                             §§goto(addr436);
                                          }
                                       }
                                       §§goto(addr355);
                                    }
                                 }
                                 §§goto(addr241);
                              }
                              §§goto(addr383);
                           }
                           §§goto(addr355);
                        }
                        §§goto(addr180);
                     }
                     §§goto(addr140);
                  }
                  addr436:
                  return null;
               }
            }
            else
            {
               §§push(param3);
               loop0:
               while(true)
               {
                  §§push(§§pop() * 0.4);
                  if(!_loc20_)
                  {
                     §§push(Number(§§pop()));
                  }
                  addr95:
                  while(true)
                  {
                     _loc8_ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr86);
      }
   }
}
