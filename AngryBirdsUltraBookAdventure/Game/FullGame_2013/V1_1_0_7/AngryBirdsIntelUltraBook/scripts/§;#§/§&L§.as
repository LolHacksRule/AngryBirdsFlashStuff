package §;#§
{
   import §"+§.§6" §;
   import §#!c§.§!I§;
   import §#!c§.§#!Z§;
   import §#!o§.§5#§;
   import §#!o§.Item;
   import §0!B§.§%9§;
   import §^`§.§;!D§;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   
   public class §&L§ implements §;!D§
   {
       
      
      private var §6?§:Array;
      
      private var §]!E§:Boolean = false;
      
      public function §&L§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§6?§ = [];
         }
         do
         {
            super();
         }
         while(_loc1_);
         
      }
      
      public function §2§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var object:Object = null;
         if(!(_loc6_ && this))
         {
            this.§]!E§ = true;
         }
         for each(object in this.§6?§)
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
      
      public function §50§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§]!E§ = true;
         }
      }
      
      public function render(param1:String, param2:Function, param3:int = 50, param4:Boolean = false) : BitmapData
      {
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = true;
         var _loc5_:Sprite = null;
         var _loc6_:§;?§ = null;
         var _loc7_:Array = null;
         var _loc8_:§5#§ = null;
         var _loc9_:Array = null;
         var _loc10_:§#!Z§ = null;
         var _loc11_:§!I§ = null;
         var _loc12_:Item = null;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:BitmapData = null;
         var _loc16_:§!I§ = null;
         var _loc17_:Item = null;
         var _loc18_:Matrix = null;
         if(_loc22_)
         {
            if(!this.§]!E§)
            {
               if(_loc22_ || this)
               {
                  this.§6?§.push({
                     "avatarString":param1,
                     "callBack":param2,
                     "imageSize":param3,
                     "ignoreBackground":param4
                  });
                  addr81:
               }
               §§goto(addr81);
            }
            else
            {
               _loc5_ = new Sprite();
               _loc6_ = new §;?§();
               _loc7_ = [];
               for each(_loc8_ in §;?§.§6!V§().characters)
               {
                  _loc16_ = new §!I§(_loc8_);
                  if(!(_loc21_ && param1))
                  {
                     _loc7_.push(_loc16_);
                  }
               }
               _loc9_ = §%9§.§62§(param1);
               _loc10_ = new §#!Z§();
               if(!_loc21_)
               {
                  _loc5_.addChild(_loc10_);
                  if(!_loc21_)
                  {
                     §§push(0);
                     if(_loc22_ || param1)
                     {
                        var _loc19_:* = §§pop();
                        if(_loc22_)
                        {
                           for each(_loc12_ in _loc9_)
                           {
                              if(_loc12_.§^w§ == "CategoryBirds")
                              {
                                 _loc11_ = _loc10_.§+e§(_loc12_.§9!^§,§6" §.§0!C§,"CategoryBirds",_loc7_,100,170,true);
                              }
                           }
                        }
                        if(!(_loc21_ && param1))
                        {
                           if(param4)
                           {
                              if(!_loc21_)
                              {
                                 addr257:
                                 _loc11_.§6Q§();
                                 addr259:
                                 while(true)
                                 {
                                 }
                                 addr259:
                              }
                              §§goto(addr259);
                           }
                           loop2:
                           while(true)
                           {
                              §§push(param3);
                              addr241:
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop() * 0.4);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop7:
                                    while(true)
                                    {
                                       _loc13_ = §§pop();
                                       while(true)
                                       {
                                          if(!(_loc21_ && this))
                                          {
                                             §§push(param3);
                                             if(!(_loc22_ || param1))
                                             {
                                                continue loop5;
                                             }
                                             §§push(§§pop() / 100);
                                             if(!_loc21_)
                                             {
                                                if(_loc21_ && param3)
                                                {
                                                   continue loop7;
                                                }
                                                §§push(§§pop() / 2);
                                                if(!_loc21_)
                                                {
                                                   if(!(_loc22_ || param1))
                                                   {
                                                      continue loop6;
                                                   }
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             _loc14_ = §§pop();
                                             if(!_loc22_)
                                             {
                                                continue;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr259);
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                           addr239:
                        }
                        while(false)
                        {
                           §§goto(addr239);
                        }
                        _loc15_ = new BitmapData(param3 + _loc13_,param3 + _loc13_,true,16777215);
                        if(_loc22_ || param1)
                        {
                           if(_loc11_)
                           {
                              if(_loc22_)
                              {
                                 _loc19_ = 0;
                                 if(!_loc21_)
                                 {
                                    for each(_loc17_ in _loc9_)
                                    {
                                       §§push(_loc17_.§^w§);
                                       if(!_loc21_)
                                       {
                                          §§push("CategoryBirds");
                                          if(_loc22_ || this)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(_loc22_)
                                             {
                                                §§push(!§§pop());
                                                if(!(_loc21_ && this))
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc21_ && param3))
                                                      {
                                                         §§pop();
                                                         if(_loc22_)
                                                         {
                                                            §§push(_loc17_.§^w§);
                                                            if(_loc22_ || this)
                                                            {
                                                               §§push("CategoryBackgrounds");
                                                               if(!_loc21_)
                                                               {
                                                                  addr344:
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!(_loc21_ && param1))
                                                                  {
                                                                     addr353:
                                                                     if(!§§pop())
                                                                     {
                                                                        if(_loc22_)
                                                                        {
                                                                           _loc11_.§'<§(_loc17_);
                                                                           if(!(_loc22_ || param2))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           addr366:
                                                                           if(_loc17_.§^w§ != "CategoryBackgrounds")
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc21_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                        }
                                                                        _loc11_.§3!p§(_loc17_.§9!^§);
                                                                        continue;
                                                                     }
                                                                     §§goto(addr366);
                                                                  }
                                                                  §§goto(addr353);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr366);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr353);
                                          }
                                          §§goto(addr344);
                                       }
                                       §§goto(addr366);
                                    }
                                 }
                                 if(_loc22_)
                                 {
                                    addr382:
                                    (_loc18_ = new Matrix()).scale(_loc14_,_loc14_);
                                    if(!_loc21_)
                                    {
                                       _loc18_.translate(_loc13_ / 2,_loc13_ / 2);
                                       if(!_loc22_)
                                       {
                                       }
                                       addr420:
                                       §§push(param2);
                                       if(_loc22_ || param3)
                                       {
                                          if(§§pop() != null)
                                          {
                                          }
                                          §§goto(addr444);
                                       }
                                       §§pop()(_loc15_);
                                       if(!(_loc21_ && this))
                                       {
                                          §§goto(addr444);
                                       }
                                       else
                                       {
                                          §§goto(addr446);
                                       }
                                    }
                                    _loc15_.draw(_loc10_,_loc18_,null,null,null,true);
                                    §§goto(addr420);
                                 }
                                 §§goto(addr446);
                              }
                              addr444:
                              if(!_loc21_)
                              {
                                 §§push(param2);
                              }
                              return _loc15_;
                           }
                           §§goto(addr420);
                        }
                        §§goto(addr382);
                     }
                     §§goto(addr241);
                  }
                  §§goto(addr259);
               }
               §§goto(addr257);
            }
            return null;
         }
         §§goto(addr81);
      }
   }
}
