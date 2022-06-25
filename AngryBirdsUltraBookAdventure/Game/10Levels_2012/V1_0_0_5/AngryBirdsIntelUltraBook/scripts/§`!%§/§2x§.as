package §`!%§
{
   import §1e§.§5m§;
   import §3!8§.§#!B§;
   import §7r§.§#!q§;
   import §7r§.Item;
   import §89§.§,;§;
   import §89§.§7A§;
   import §finally§.§4!S§;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   
   public class §2x§ implements §#!B§
   {
       
      
      private var §4S§:Array;
      
      private var §<"§:Boolean = false;
      
      public function §2x§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§4S§ = [];
         }
         do
         {
            super();
         }
         while(_loc2_ && _loc1_);
         
      }
      
      public function §-'§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var object:Object = null;
         if(!(_loc5_ && _loc1_))
         {
            this.§<"§ = true;
         }
         for each(object in this.§4S§)
         {
            if(_loc6_ || _loc1_)
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
      
      public function § !-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§<"§ = true;
         }
      }
      
      public function render(param1:String, param2:Function, param3:int = 50, param4:Boolean = false) : BitmapData
      {
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = true;
         var _loc5_:Sprite = null;
         var _loc6_:§6!_§ = null;
         var _loc7_:Array = null;
         var _loc8_:§#!q§ = null;
         var _loc9_:Array = null;
         var _loc10_:§,;§ = null;
         var _loc11_:§7A§ = null;
         var _loc12_:Item = null;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:BitmapData = null;
         var _loc16_:§7A§ = null;
         var _loc17_:Item = null;
         var _loc18_:Matrix = null;
         if(!(_loc21_ && param2))
         {
            if(!this.§<"§)
            {
               if(!(_loc21_ && param1))
               {
                  this.§4S§.push({
                     "avatarString":param1,
                     "callBack":param2,
                     "imageSize":param3,
                     "ignoreBackground":param4
                  });
                  addr86:
               }
               §§goto(addr86);
            }
            else
            {
               _loc5_ = new Sprite();
               _loc6_ = new §6!_§();
               _loc7_ = [];
               for each(_loc8_ in §6!_§.§`;§().characters)
               {
                  _loc16_ = new §7A§(_loc8_);
                  if(!_loc21_)
                  {
                     _loc7_.push(_loc16_);
                  }
               }
               _loc9_ = §4!S§.§`x§(param1);
               _loc10_ = new §,;§();
               if(!_loc21_)
               {
                  _loc5_.addChild(_loc10_);
                  if(!_loc21_)
                  {
                     §§push(0);
                     if(_loc22_ || param1)
                     {
                        var _loc19_:* = §§pop();
                        if(!(_loc21_ && this))
                        {
                           for each(_loc12_ in _loc9_)
                           {
                              if(_loc12_.§@§ == "CategoryBirds")
                              {
                                 _loc11_ = _loc10_.§^7§(_loc12_.§&!X§,§5m§.§2V§,"CategoryBirds",_loc7_,100,170,true);
                              }
                           }
                        }
                        if(!(_loc21_ && this))
                        {
                           if(param4)
                           {
                              addr267:
                              while(true)
                              {
                                 _loc11_.§1!3§();
                                 addr269:
                                 while(true)
                                 {
                                 }
                              }
                              addr267:
                           }
                           loop2:
                           while(true)
                           {
                              §§push(param3);
                              addr260:
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop() * 0.4);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop6:
                                    while(true)
                                    {
                                       _loc13_ = §§pop();
                                       addr264:
                                       while(true)
                                       {
                                          §§push(param3);
                                          if(!(_loc22_ || param2))
                                          {
                                             continue loop4;
                                          }
                                          §§push(§§pop() / 100);
                                          if(_loc22_ || this)
                                          {
                                             if(_loc21_)
                                             {
                                                continue loop6;
                                             }
                                             if(!(_loc22_ || param1))
                                             {
                                                continue loop5;
                                             }
                                             §§push(§§pop() / 2);
                                             if(_loc22_ || param1)
                                             {
                                                addr243:
                                                §§push(Number(§§pop()));
                                             }
                                             _loc14_ = §§pop();
                                             if(!(_loc22_ || param2))
                                             {
                                                continue;
                                             }
                                             if(!_loc21_)
                                             {
                                                if(!_loc21_)
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   continue loop2;
                                                }
                                                §§goto(addr267);
                                             }
                                             §§goto(addr269);
                                          }
                                          §§goto(addr243);
                                       }
                                       _loc15_ = new BitmapData(param3 + _loc13_,param3 + _loc13_,true,16777215);
                                       if(!(_loc21_ && param1))
                                       {
                                          if(_loc11_)
                                          {
                                             if(!(_loc21_ && this))
                                             {
                                                _loc19_ = 0;
                                                if(!(_loc21_ && this))
                                                {
                                                   for each(_loc17_ in _loc9_)
                                                   {
                                                      §§push(_loc17_.§@§);
                                                      if(!(_loc21_ && param1))
                                                      {
                                                         §§push("CategoryBirds");
                                                         if(_loc22_)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc22_)
                                                            {
                                                               §§push(!§§pop());
                                                               if(_loc22_ || param2)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc22_)
                                                                     {
                                                                        addr344:
                                                                        §§pop();
                                                                        if(!(_loc21_ && param1))
                                                                        {
                                                                           §§push(_loc17_.§@§);
                                                                           if(_loc22_ || this)
                                                                           {
                                                                              addr361:
                                                                              §§push("CategoryBackgrounds");
                                                                              if(!(_loc21_ && this))
                                                                              {
                                                                                 addr369:
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    addr373:
                                                                                    addr372:
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(_loc21_ && param1)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       addr381:
                                                                                       _loc11_.§9!r§(_loc17_);
                                                                                       if(_loc21_ && param1)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                    }
                                                                                    §§push(_loc17_.§@§);
                                                                                    §§push("CategoryBackgrounds");
                                                                                 }
                                                                                 §§goto(addr373);
                                                                              }
                                                                              if(§§pop() == §§pop())
                                                                              {
                                                                                 if(_loc22_ || param1)
                                                                                 {
                                                                                    _loc11_.§&!x§(_loc17_.§&!X§);
                                                                                 }
                                                                              }
                                                                              continue;
                                                                           }
                                                                           §§goto(addr373);
                                                                        }
                                                                        §§goto(addr381);
                                                                     }
                                                                  }
                                                                  §§goto(addr373);
                                                               }
                                                               §§goto(addr344);
                                                            }
                                                            §§goto(addr372);
                                                         }
                                                         §§goto(addr369);
                                                      }
                                                      §§goto(addr361);
                                                   }
                                                }
                                                if(!_loc21_)
                                                {
                                                   addr412:
                                                   (_loc18_ = new Matrix()).scale(_loc14_,_loc14_);
                                                   if(!(_loc21_ && param3))
                                                   {
                                                      _loc18_.translate(_loc13_ / 2,_loc13_ / 2);
                                                      if(_loc22_ || param1)
                                                      {
                                                      }
                                                      addr460:
                                                      §§push(param2);
                                                      if(!_loc21_)
                                                      {
                                                         if(§§pop() != null)
                                                         {
                                                            if(!(_loc21_ && param2))
                                                            {
                                                               addr473:
                                                               param2(_loc15_);
                                                               if(!_loc22_)
                                                               {
                                                                  §§goto(addr481);
                                                               }
                                                            }
                                                         }
                                                         return _loc15_;
                                                      }
                                                      §§goto(addr473);
                                                   }
                                                   _loc15_.draw(_loc10_,_loc18_,null,null,null,true);
                                                   §§goto(addr460);
                                                }
                                                §§goto(addr473);
                                             }
                                             §§goto(addr481);
                                          }
                                          §§goto(addr460);
                                       }
                                       §§goto(addr412);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr269);
                     }
                     §§goto(addr260);
                  }
                  §§goto(addr264);
               }
               §§goto(addr267);
            }
            return null;
         }
         §§goto(addr86);
      }
   }
}
