package §^c§
{
   import §&=§.§#!5§;
   import §&=§.Item;
   import §8!P§.§5!n§;
   import §8!P§.§@!=§;
   import §;!q§.§^!#§;
   import §<z§.§`G§;
   import §@_§.§!T§;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   
   public class §=o§ implements §^!#§
   {
       
      
      private var §8!>§:Array;
      
      private var §[!?§:Boolean = false;
      
      public function §=o§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§8!>§ = [];
            do
            {
               super();
            }
            while(!_loc1_);
            
         }
      }
      
      public function §<r§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var object:Object = null;
         if(!_loc6_)
         {
            this.§[!?§ = true;
         }
         for each(object in this.§8!>§)
         {
            if(!(_loc6_ && _loc1_))
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
      
      public function §?k§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§[!?§ = true;
         }
      }
      
      public function render(param1:String, param2:Function, param3:int = 50, param4:Boolean = false) : BitmapData
      {
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = true;
         var _loc5_:Sprite = null;
         var _loc6_:§+-§ = null;
         var _loc7_:Array = null;
         var _loc8_:§#!5§ = null;
         var _loc9_:Array = null;
         var _loc10_:§5!n§ = null;
         var _loc11_:§@!=§ = null;
         var _loc12_:Item = null;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:BitmapData = null;
         var _loc16_:§@!=§ = null;
         var _loc17_:Item = null;
         var _loc18_:Matrix = null;
         if(!_loc21_)
         {
            if(!this.§[!?§)
            {
               if(!_loc21_)
               {
                  this.§8!>§.push({
                     "avatarString":param1,
                     "callBack":param2,
                     "imageSize":param3,
                     "ignoreBackground":param4
                  });
                  addr76:
               }
               §§goto(addr76);
            }
            else
            {
               _loc5_ = new Sprite();
               _loc6_ = new §+-§();
               _loc7_ = [];
               for each(_loc8_ in §+-§.§3!§().characters)
               {
                  _loc16_ = new §@!=§(_loc8_);
                  if(!(_loc21_ && param2))
                  {
                     _loc7_.push(_loc16_);
                  }
               }
               _loc9_ = §`G§.§@Q§(param1);
               _loc10_ = new §5!n§();
               if(_loc22_ || param2)
               {
                  _loc5_.addChild(_loc10_);
                  if(_loc22_)
                  {
                     §§push(0);
                     if(!(_loc21_ && param1))
                     {
                        var _loc19_:* = §§pop();
                        if(_loc22_)
                        {
                           for each(_loc12_ in _loc9_)
                           {
                              if(_loc12_.§5H§ == "CategoryBirds")
                              {
                                 _loc11_ = _loc10_.§ r§(_loc12_.§49§,§!T§.§+g§,"CategoryBirds",_loc7_,100,170,true);
                              }
                           }
                        }
                        if(_loc22_)
                        {
                           if(param4)
                           {
                              addr252:
                              while(true)
                              {
                                 _loc11_.§1!U§();
                                 addr254:
                                 while(true)
                                 {
                                 }
                              }
                              addr252:
                           }
                           loop2:
                           while(true)
                           {
                              §§push(param3);
                              loop3:
                              while(true)
                              {
                                 §§push(§§pop() * 0.4);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop5:
                                    while(true)
                                    {
                                       _loc13_ = §§pop();
                                       loop6:
                                       while(!(_loc21_ && this))
                                       {
                                          if(_loc22_)
                                          {
                                             §§push(param3);
                                             if(_loc21_ && param2)
                                             {
                                                continue loop3;
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop() / 100);
                                                if(!_loc21_)
                                                {
                                                   if(!(_loc21_ && param1))
                                                   {
                                                      §§push(§§pop() / 2);
                                                      if(!_loc21_)
                                                      {
                                                         addr211:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      if(_loc21_ && param2)
                                                      {
                                                         continue loop5;
                                                      }
                                                      _loc14_ = §§pop();
                                                      if(_loc21_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      while(false)
                                                      {
                                                         continue loop2;
                                                      }
                                                   }
                                                   continue loop4;
                                                   _loc15_ = new BitmapData(param3 + _loc13_,param3 + _loc13_,true,16777215);
                                                   if(!(_loc21_ && param3))
                                                   {
                                                      if(_loc11_)
                                                      {
                                                         if(_loc22_ || param1)
                                                         {
                                                            _loc19_ = 0;
                                                            if(!(_loc21_ && param1))
                                                            {
                                                               for each(_loc17_ in _loc9_)
                                                               {
                                                                  §§push(_loc17_.§5H§);
                                                                  if(_loc22_)
                                                                  {
                                                                     §§push("CategoryBirds");
                                                                     if(_loc22_ || this)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        if(_loc22_ || param2)
                                                                        {
                                                                           §§push(!§§pop());
                                                                           if(!(_loc21_ && this))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(_loc22_ || param2)
                                                                                    {
                                                                                       §§push(_loc17_.§5H§);
                                                                                       if(_loc22_)
                                                                                       {
                                                                                          §§push("CategoryBackgrounds");
                                                                                          if(_loc22_ || param2)
                                                                                          {
                                                                                             §§push(§§pop() == §§pop());
                                                                                             if(_loc22_ || param1)
                                                                                             {
                                                                                                addr363:
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   if(!_loc21_)
                                                                                                   {
                                                                                                      addr366:
                                                                                                      _loc11_.§%D§(_loc17_);
                                                                                                      if(!_loc21_)
                                                                                                      {
                                                                                                         addr371:
                                                                                                         if(_loc17_.§5H§ != "CategoryBackgrounds")
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(!_loc22_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                      }
                                                                                                      _loc11_.§<d§(_loc17_.§49§);
                                                                                                      continue;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr371);
                                                                                             }
                                                                                             §§goto(addr363);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr371);
                                                                                    }
                                                                                    §§goto(addr366);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr363);
                                                                     }
                                                                  }
                                                                  §§goto(addr371);
                                                               }
                                                            }
                                                            if(!_loc21_)
                                                            {
                                                               (_loc18_ = new Matrix()).scale(_loc14_,_loc14_);
                                                               if(_loc22_ || param2)
                                                               {
                                                                  _loc18_.translate(_loc13_ / 2,_loc13_ / 2);
                                                                  if(_loc21_ && this)
                                                                  {
                                                                  }
                                                                  §§goto(addr435);
                                                               }
                                                               _loc15_.draw(_loc10_,_loc18_,null,null,null,true);
                                                               §§goto(addr435);
                                                            }
                                                            §§goto(addr451);
                                                         }
                                                         §§goto(addr442);
                                                      }
                                                      addr435:
                                                      §§push(param2);
                                                      if(_loc22_)
                                                      {
                                                         if(§§pop() != null)
                                                         {
                                                         }
                                                         §§goto(addr449);
                                                      }
                                                      §§pop()(_loc15_);
                                                      if(_loc21_)
                                                      {
                                                         §§goto(addr451);
                                                      }
                                                      §§goto(addr449);
                                                   }
                                                   addr449:
                                                   if(!_loc21_)
                                                   {
                                                      addr442:
                                                      §§push(param2);
                                                   }
                                                   return _loc15_;
                                                }
                                                §§goto(addr211);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr252);
                                          }
                                       }
                                       §§goto(addr254);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr252);
                     }
                     §§goto(addr196);
                  }
               }
               §§goto(addr232);
            }
            return null;
         }
         §§goto(addr76);
      }
   }
}
