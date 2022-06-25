package §_-y7§
{
   import §_-1N§.§_-Kz§;
   import §_-4§.Item;
   import §_-4§.§_-nq§;
   import §_-Mc§.§_-059§;
   import §_-Mc§.§in§;
   import §_-hX§.§_-iS§;
   import §_-wv§.§_-Pj§;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   
   public class §_-zA§ implements §_-iS§
   {
       
      
      private var §_-Hz§:Array;
      
      private var §_-I8§:Boolean = false;
      
      public function §_-zA§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§_-Hz§ = [];
         }
         do
         {
            super();
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function §_-wV§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var object:Object = null;
         if(_loc5_ || _loc2_)
         {
            this.§_-I8§ = true;
         }
         for each(object in this.§_-Hz§)
         {
            if(_loc5_)
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
      
      public function §_-Cs§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§_-I8§ = true;
         }
      }
      
      public function render(param1:String, param2:Function, param3:int = 50, param4:Boolean = false) : BitmapData
      {
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = false;
         var _loc5_:Sprite = null;
         var _loc6_:§_-xe§ = null;
         var _loc7_:Array = null;
         var _loc8_:§_-nq§ = null;
         var _loc9_:Array = null;
         var _loc10_:§in§ = null;
         var _loc11_:§_-059§ = null;
         var _loc12_:Item = null;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:BitmapData = null;
         var _loc16_:§_-059§ = null;
         var _loc17_:Item = null;
         var _loc18_:Matrix = null;
         if(_loc21_)
         {
            if(!this.§_-I8§)
            {
               if(!(_loc22_ && param3))
               {
                  this.§_-Hz§.push({
                     "avatarString":param1,
                     "callBack":param2,
                     "imageSize":param3,
                     "ignoreBackground":param4
                  });
                  addr80:
               }
               §§goto(addr80);
            }
            else
            {
               _loc5_ = new Sprite();
               _loc6_ = new §_-xe§();
               _loc7_ = [];
               for each(_loc8_ in §_-xe§.§_-s2§().characters)
               {
                  _loc16_ = new §_-059§(_loc8_);
                  if(_loc21_ || param1)
                  {
                     _loc7_.push(_loc16_);
                  }
               }
               _loc9_ = §_-Pj§.§_-0Bw§(param1);
               _loc10_ = new §in§();
               if(!(_loc22_ && param2))
               {
                  _loc5_.addChild(_loc10_);
                  if(_loc21_ || param1)
                  {
                     §§push(0);
                     if(!_loc22_)
                     {
                        var _loc19_:* = §§pop();
                        if(_loc21_ || param3)
                        {
                           for each(_loc12_ in _loc9_)
                           {
                              if(_loc12_.§_-4k§ == "CategoryBirds")
                              {
                                 _loc11_ = _loc10_.§_-071§(_loc12_.§_-1h§,§_-Kz§.§_-xZ§,"CategoryBirds",_loc7_,100,170,true);
                              }
                           }
                        }
                        if(_loc21_ || this)
                        {
                           if(param4)
                           {
                              if(!_loc22_)
                              {
                                 _loc11_.§_-wf§();
                              }
                              while(true)
                              {
                              }
                              addr278:
                           }
                           while(true)
                           {
                              §§push(param3);
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop() * 0.4);
                                 if(_loc21_ || param2)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    _loc13_ = §§pop();
                                    addr271:
                                    loop8:
                                    while(true)
                                    {
                                       §§push(param3);
                                       if(!(_loc21_ || param1))
                                       {
                                          continue loop4;
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop() / 100);
                                          if(_loc22_)
                                          {
                                             continue loop5;
                                          }
                                          §§push(§§pop() / 2);
                                          if(!(_loc22_ && param2))
                                          {
                                             continue loop5;
                                          }
                                          addr241:
                                          _loc14_ = §§pop();
                                          if(!(_loc21_ || param1))
                                          {
                                             continue loop8;
                                          }
                                          if(_loc22_ && param3)
                                          {
                                             §§goto(addr278);
                                          }
                                          continue loop8;
                                       }
                                    }
                                 }
                              }
                           }
                           addr258:
                           addr200:
                        }
                        while(false)
                        {
                           §§goto(addr258);
                           §§goto(addr249);
                        }
                        _loc15_ = new BitmapData(param3 + _loc13_,param3 + _loc13_,true,16777215);
                        if(_loc21_ || param2)
                        {
                           if(_loc11_)
                           {
                              if(_loc21_ || param1)
                              {
                                 _loc19_ = 0;
                                 if(!_loc22_)
                                 {
                                    for each(_loc17_ in _loc9_)
                                    {
                                       §§push(_loc17_.§_-4k§);
                                       if(!_loc22_)
                                       {
                                          §§push("CategoryBirds");
                                          if(_loc21_ || param3)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(_loc21_ || param3)
                                             {
                                                §§push(!§§pop());
                                                if(_loc21_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc22_)
                                                      {
                                                         §§pop();
                                                         if(_loc21_ || this)
                                                         {
                                                            §§push(_loc17_.§_-4k§);
                                                            if(!(_loc22_ && this))
                                                            {
                                                               §§push("CategoryBackgrounds");
                                                               if(_loc21_)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!(_loc22_ && param2))
                                                                  {
                                                                     addr377:
                                                                     addr376:
                                                                     if(!§§pop())
                                                                     {
                                                                        if(!(_loc22_ && param1))
                                                                        {
                                                                           _loc11_.§_-QZ§(_loc17_);
                                                                           if(!_loc21_)
                                                                           {
                                                                           }
                                                                           addr401:
                                                                           _loc11_.§_-QQ§(_loc17_.§_-1h§);
                                                                           continue;
                                                                        }
                                                                     }
                                                                     if(_loc17_.§_-4k§ != "CategoryBackgrounds")
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc22_ && param2)
                                                                     {
                                                                        continue;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr377);
                                                         }
                                                         §§goto(addr401);
                                                      }
                                                      §§goto(addr376);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr377);
                                    }
                                 }
                                 if(_loc21_ || param2)
                                 {
                                 }
                                 §§goto(addr480);
                              }
                              (_loc18_ = new Matrix()).scale(_loc14_,_loc14_);
                              if(_loc21_)
                              {
                                 _loc18_.translate(_loc13_ / 2,_loc13_ / 2);
                                 if(!_loc21_)
                                 {
                                 }
                                 addr454:
                                 §§push(param2);
                                 if(_loc21_)
                                 {
                                    if(§§pop() != null)
                                    {
                                       if(!(_loc22_ && param2))
                                       {
                                          addr467:
                                          param2(_loc15_);
                                          if(!(_loc21_ || param1))
                                          {
                                             §§goto(addr480);
                                          }
                                       }
                                       §§goto(addr480);
                                    }
                                    return _loc15_;
                                 }
                                 §§goto(addr467);
                              }
                              _loc15_.draw(_loc10_,_loc18_,null,null,null,true);
                           }
                           §§goto(addr454);
                        }
                        §§goto(addr480);
                     }
                     §§goto(addr210);
                  }
                  §§goto(addr271);
               }
               §§goto(addr200);
            }
            return null;
         }
         §§goto(addr80);
      }
   }
}
