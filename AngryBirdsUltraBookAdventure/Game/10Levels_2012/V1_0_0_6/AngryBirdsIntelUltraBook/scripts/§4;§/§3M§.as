package §4;§
{
   import §"D§.§#v§;
   import §%t§.§>!N§;
   import §8!6§.§&!S§;
   import §8!6§.Item;
   import §[!I§.§<-§;
   import §[N§.§<!b§;
   import §[N§.§@!H§;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   
   public class §3M§ implements §>!N§
   {
       
      
      private var §9!Q§:Array;
      
      private var §?C§:Boolean = false;
      
      public function §3M§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§9!Q§ = [];
         }
         do
         {
            super();
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      public function §1p§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var object:Object = null;
         if(_loc6_)
         {
            this.§?C§ = true;
         }
         for each(object in this.§9!Q§)
         {
            if(!_loc5_)
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
      
      public function §&!X§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§?C§ = true;
         }
      }
      
      public function render(param1:String, param2:Function, param3:int = 50, param4:Boolean = false) : BitmapData
      {
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = true;
         var _loc5_:Sprite = null;
         var _loc6_:§5n§ = null;
         var _loc7_:Array = null;
         var _loc8_:§&!S§ = null;
         var _loc9_:Array = null;
         var _loc10_:§@!H§ = null;
         var _loc11_:§<!b§ = null;
         var _loc12_:Item = null;
         var _loc13_:* = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:BitmapData = null;
         var _loc16_:§<!b§ = null;
         var _loc17_:Item = null;
         var _loc18_:Matrix = null;
         if(_loc22_ || param1)
         {
            if(!this.§?C§)
            {
               if(_loc22_ || param2)
               {
                  addr74:
                  this.§9!Q§.push({
                     "avatarString":param1,
                     "callBack":param2,
                     "imageSize":param3,
                     "ignoreBackground":param4
                  });
               }
            }
            else
            {
               _loc5_ = new Sprite();
               _loc6_ = new §5n§();
               _loc7_ = [];
               for each(_loc8_ in §5n§.§+3§().characters)
               {
                  _loc16_ = new §<!b§(_loc8_);
                  if(_loc22_)
                  {
                     _loc7_.push(_loc16_);
                  }
               }
               _loc9_ = §#v§.§62§(param1);
               _loc10_ = new §@!H§();
               if(!(_loc21_ && this))
               {
                  _loc5_.addChild(_loc10_);
                  if(_loc22_)
                  {
                     §§push(0);
                     if(_loc22_)
                     {
                        var _loc19_:* = §§pop();
                        if(_loc22_ || param3)
                        {
                           for each(_loc12_ in _loc9_)
                           {
                              if(_loc12_.§0!R§ == "CategoryBirds")
                              {
                                 _loc11_ = _loc10_.§6y§(_loc12_.§@H§,§<-§.§!!Q§,"CategoryBirds",_loc7_,100,170,true);
                              }
                           }
                        }
                        if(_loc22_ || param3)
                        {
                           if(param4)
                           {
                              if(_loc22_ || param1)
                              {
                                 _loc11_.§`<§();
                              }
                              while(true)
                              {
                              }
                              addr274:
                           }
                           while(true)
                           {
                              §§push(param3);
                              addr258:
                              while(true)
                              {
                                 §§push(§§pop() * 0.4);
                                 addr260:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr261:
                                    while(true)
                                    {
                                       _loc13_ = §§pop();
                                    }
                                 }
                              }
                           }
                           addr256:
                           addr196:
                        }
                        loop2:
                        while(true)
                        {
                           §§push(param3);
                           if(_loc22_)
                           {
                              while(true)
                              {
                                 §§push(§§pop() / 100);
                                 if(_loc22_ || this)
                                 {
                                    if(_loc22_)
                                    {
                                       if(_loc22_ || this)
                                       {
                                          §§push(§§pop() / 2);
                                          if(_loc22_ || param2)
                                          {
                                             addr239:
                                             _loc14_ = §§pop();
                                             if(_loc21_ && param3)
                                             {
                                                continue loop2;
                                             }
                                             if(_loc22_ || this)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr274);
                                             }
                                             §§goto(addr256);
                                          }
                                          §§goto(addr239);
                                       }
                                       §§goto(addr260);
                                    }
                                    §§goto(addr261);
                                 }
                                 §§goto(addr239);
                              }
                              _loc15_ = new BitmapData(param3 + _loc13_,param3 + _loc13_,true,16777215);
                              if(_loc22_ || param2)
                              {
                                 if(_loc11_)
                                 {
                                    if(!(_loc21_ && this))
                                    {
                                       _loc19_ = 0;
                                       if(!_loc21_)
                                       {
                                          for each(_loc17_ in _loc9_)
                                          {
                                             §§push(_loc17_.§0!R§);
                                             if(!_loc21_)
                                             {
                                                §§push("CategoryBirds");
                                                if(_loc22_ || param2)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc22_)
                                                   {
                                                      §§push(!§§pop());
                                                      if(!(_loc21_ && param2))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc21_)
                                                            {
                                                               §§pop();
                                                               if(!_loc21_)
                                                               {
                                                                  §§push(_loc17_.§0!R§);
                                                                  if(_loc22_)
                                                                  {
                                                                     addr351:
                                                                     §§push("CategoryBackgrounds");
                                                                     if(!(_loc21_ && this))
                                                                     {
                                                                        addr359:
                                                                        §§push(§§pop() == §§pop());
                                                                        if(_loc22_ || param2)
                                                                        {
                                                                           addr368:
                                                                           if(!§§pop())
                                                                           {
                                                                              if(_loc22_)
                                                                              {
                                                                                 _loc11_.§1!!§(_loc17_);
                                                                                 if(!(_loc22_ || param2))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 addr381:
                                                                                 §§push(_loc17_.§0!R§);
                                                                                 §§push("CategoryBackgrounds");
                                                                              }
                                                                           }
                                                                           §§goto(addr381);
                                                                        }
                                                                        §§goto(addr368);
                                                                     }
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        if(_loc22_)
                                                                        {
                                                                           _loc11_.§,U§(_loc17_.§@H§);
                                                                        }
                                                                     }
                                                                     continue;
                                                                  }
                                                               }
                                                               §§goto(addr381);
                                                            }
                                                         }
                                                         §§goto(addr368);
                                                      }
                                                   }
                                                   §§goto(addr368);
                                                }
                                                §§goto(addr359);
                                             }
                                             §§goto(addr351);
                                          }
                                       }
                                       if(!_loc21_)
                                       {
                                          addr397:
                                          (_loc18_ = new Matrix()).scale(_loc14_,_loc14_);
                                          if(!(_loc21_ && param1))
                                          {
                                             _loc18_.translate(_loc13_ / 2,_loc13_ / 2);
                                             if(!_loc21_)
                                             {
                                                _loc15_.draw(_loc10_,_loc18_,null,null,null,true);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr471);
                                 }
                                 §§push(param2);
                                 if(!(_loc21_ && param3))
                                 {
                                    if(§§pop() != null)
                                    {
                                       if(_loc22_ || param1)
                                       {
                                          addr458:
                                          param2(_loc15_);
                                          if(!(_loc22_ || param2))
                                          {
                                             §§goto(addr471);
                                          }
                                       }
                                    }
                                    return _loc15_;
                                 }
                                 §§goto(addr458);
                              }
                              §§goto(addr397);
                              addr201:
                           }
                           §§goto(addr258);
                        }
                     }
                     §§goto(addr201);
                  }
               }
               §§goto(addr196);
            }
            addr471:
            return null;
         }
         §§goto(addr74);
      }
   }
}
