package §_-Mc§
{
   import §_-6C§.§_-Ev§;
   import §_-6C§.§_-gt§;
   import §_-wA§.§_-0X§;
   import com.rovio.assets.§_-Fc§;
   import flash.display.MovieClip;
   
   public class §_-0-w§ extends §_-Ev§
   {
      
      public static const §_-79§:String = "buy";
      
      public static const §_-C2§:String = "default";
      
      public static const NORMAL:String = "normal";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §_-79§ = "buy";
            while(true)
            {
               §_-C2§ = "default";
               while(!(_loc1_ && §_-0-w§))
               {
                  NORMAL = "normal";
                  if(_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr45:
               }
            }
         }
         §§goto(addr45);
      }
      
      private var §_-ei§:MovieClip;
      
      private var §_-MY§:MovieClip;
      
      private var §_-CJ§:String;
      
      public function §_-0-w§(param1:XML, param2:§_-gt§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            param2 = "IconHolder";
         }
         var _loc4_:MovieClip = mClip.getChildByName(param2) as MovieClip;
         loop0:
         while(true)
         {
            if(_loc4_.numChildren > 0)
            {
               _loc4_.removeChildAt(0);
               continue;
            }
            loop1:
            while(true)
            {
               super.setIcon(param1,param2,param3);
               while(true)
               {
                  if(_loc6_)
                  {
                     if(this.§_-ei§ != null)
                     {
                        break;
                     }
                     if(!_loc5_)
                     {
                        if(_loc5_)
                        {
                           continue loop1;
                        }
                        this.§_-ei§ = param1;
                     }
                     if(!(_loc5_ && this))
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop0;
               }
               return;
            }
         }
      }
      
      public function §_-vU§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1;
         if(_loc3_ || _loc2_)
         {
            §§push(§_-79§);
            if(!(_loc4_ && param1))
            {
               §§push(_loc2_);
               if(!(_loc4_ && this))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc4_ && param1))
                     {
                        addr138:
                        §§push(0);
                        if(_loc4_ && param1)
                        {
                        }
                     }
                     else
                     {
                        addr183:
                        §§push(2);
                        if(!(_loc4_ && param1))
                        {
                           addr191:
                        }
                     }
                     §§goto(addr196);
                  }
                  else
                  {
                     §§push(NORMAL);
                     if(!(_loc4_ && param1))
                     {
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(1);
                                 if(!_loc3_)
                                 {
                                    §§goto(addr191);
                                 }
                              }
                              else
                              {
                                 §§goto(addr183);
                              }
                              §§goto(addr196);
                           }
                           else
                           {
                              §§goto(addr182);
                           }
                        }
                     }
                     §§goto(addr182);
                  }
               }
               §§goto(addr182);
            }
            addr182:
            if(§_-C2§ === _loc2_)
            {
               §§goto(addr183);
            }
            else
            {
               §§push(3);
            }
            addr196:
            switch(§§pop())
            {
               case 0:
                  this.mClip.priceTag.visible = true;
                  this.mClip.background.gotoAndStop("buy");
                  break;
                  addr101:
                  addr83:
               case 1:
                  this.mClip.priceTag.visible = false;
                  if(!_loc4_)
                  {
                     if(_loc3_)
                     {
                        this.mClip.background.gotoAndStop("normal");
                        if(_loc3_ || _loc3_)
                        {
                           if(!_loc4_)
                           {
                              addr32:
                              break;
                           }
                        }
                        break;
                     }
                     §§goto(addr101);
                     §§goto(addr83);
                  }
                  break;
               case 2:
                  this.mClip.priceTag.visible = false;
                  if(_loc3_ || param1)
                  {
                     this.mClip.background.gotoAndStop("default");
                     if(_loc3_ || _loc3_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr32);
                     }
                     break;
                  }
            }
            return;
         }
         §§goto(addr138);
      }
      
      public function §_-0v§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = null;
         if(!_loc5_)
         {
            if(param2 <= 0)
            {
               this.§_-vU§(NORMAL);
               loop0:
               while(true)
               {
                  if(!(_loc5_ && param2))
                  {
                     addr63:
                     while(true)
                     {
                        continue loop0;
                     }
                     addr63:
                  }
               }
            }
            while(true)
            {
               §§push(§_-0X§.§_-Dx§(param2));
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
               §§goto(addr110);
            }
         }
         §§goto(addr63);
      }
      
      private function §_-z5§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§_-Fc§);
         §§push("Inventory_Item_");
         if(_loc5_)
         {
            §§push(§§pop() + param1);
         }
         var _loc2_:Class = §§pop().§_-YE§(§§pop());
         var _loc3_:MovieClip = new _loc2_();
         if(_loc5_ || this)
         {
            _loc3_.x = 31 - _loc3_.width * 0.5;
            if(_loc5_ || param1)
            {
               _loc3_.y = 31 - _loc3_.height * 0.5;
               addr61:
               if(_loc5_)
               {
                  _loc3_.scaleX *= _loc3_.scaleY = _loc3_.scaleY * 0.9;
                  if(_loc6_)
                  {
                  }
                  §§goto(addr101);
               }
               this.setIcon(_loc3_);
            }
            addr101:
            return;
         }
         §§goto(addr61);
      }
      
      public function §_-ZA§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§_-vU§(§_-C2§);
         }
         do
         {
            this.setIcon(this.§_-ei§);
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      public function §_-Is§() : void
      {
         try
         {
            §_-Nx§.gotoAndStop("out");
         }
         catch(e:Error)
         {
         }
      }
      
      public function §_-MM§() : void
      {
         try
         {
            §_-Nx§.gotoAndStop("over");
         }
         catch(e:Error)
         {
         }
      }
   }
}
