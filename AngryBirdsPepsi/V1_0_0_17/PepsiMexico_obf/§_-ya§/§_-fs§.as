package §_-ya§
{
   import §_-LP§.DisplayObject;
   import §_-LP§.DisplayObjectContainer;
   import §_-LP§.Sprite;
   import §_-LP§.§_-19§;
   import §_-Ra§.§_-2X§;
   import §_-Ra§.§_-Vr§;
   import §_-Ra§.§_-fR§;
   
   public class §_-fs§ extends §_-ga§
   {
      
      public static const §_-6G§:String = "background";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-6G§ = "background";
         }
      }
      
      private var mName:String;
      
      private var §_-2i§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §_-sa§:Number;
      
      private var §_-cr§:Number;
      
      private var §_-BX§:Boolean = true;
      
      public function §_-fs§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super(param1,param2);
            if(!_loc8_)
            {
               this.mName = param3;
               if(!(_loc8_ && this))
               {
                  this.§_-2i§ = param4;
                  if(_loc8_ && param1)
                  {
                  }
                  §§goto(addr68);
               }
               this.mX = param5;
               if(_loc7_ || param3)
               {
                  this.mY = param6;
               }
            }
         }
         addr68:
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §_-lR§() : String
      {
         return this.§_-2i§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set §_-q6§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-BX§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:DisplayObject = null;
         var _loc4_:§_-Vr§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:DisplayObject = null;
         var _loc7_:DisplayObjectContainer = null;
         if(_loc9_ || _loc3_)
         {
            §§push(super.update(param1,param2));
            if(!(_loc8_ && _loc3_))
            {
               if(!§§pop())
               {
                  addr48:
                  _loc3_ = §_-fR§.§_-xl§(this.§_-lR§,§_-2X§.§_-mE§);
                  if(!(_loc8_ && param1))
                  {
                     if(!_loc3_)
                     {
                        if(!_loc8_)
                        {
                           addr67:
                           if(_loc4_ = §_-2X§.§_-mE§.§_-ln§(this.§_-lR§))
                           {
                              _loc3_ = new §_-19§(_loc4_.texture);
                              if(_loc9_ || param2)
                              {
                                 _loc3_.x = -_loc4_.pivotX;
                                 if(!(_loc8_ && param1))
                                 {
                                    _loc3_.y = -_loc4_.pivotY;
                                 }
                              }
                           }
                        }
                        addr321:
                        return true;
                        addr320:
                     }
                     if(_loc3_)
                     {
                        if(_loc9_)
                        {
                           if(_loc5_ = param2.getChildByName(§_-6G§) as Sprite)
                           {
                              if(!(_loc8_ && param2))
                              {
                                 param2 = _loc5_;
                                 addr129:
                                 §§push(_loc3_);
                                 §§push(_loc3_.x);
                                 if(!(_loc8_ && param2))
                                 {
                                    §§push(§§pop() + this.x);
                                 }
                                 §§pop().x = §§pop();
                                 if(!(_loc8_ && param2))
                                 {
                                    §§goto(addr150);
                                 }
                                 §§goto(addr173);
                              }
                              addr150:
                              §§push(_loc3_);
                              §§push(_loc3_.y);
                              if(!(_loc8_ && this))
                              {
                                 §§push(§§pop() + this.y);
                              }
                              §§pop().y = §§pop();
                              if(!_loc8_)
                              {
                                 addr173:
                                 _loc3_.name = this.name;
                              }
                              if(_loc6_ = param2.getChildByName(this.name))
                              {
                                 if(!_loc8_)
                                 {
                                    (_loc7_ = _loc6_.parent).removeChild(_loc6_,true);
                                    _loc7_.addChild(_loc3_);
                                    if(!(_loc8_ && param1))
                                    {
                                       §§goto(addr209);
                                    }
                                    §§goto(addr215);
                                 }
                              }
                              else
                              {
                                 param2.addChild(_loc3_);
                              }
                              addr209:
                              if(this.name == §_-6G§)
                              {
                                 if(!_loc8_)
                                 {
                                    addr215:
                                    if(this.§_-BX§)
                                    {
                                       if(_loc8_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       param2.x += (§_-tW§.§_-1q§ - this.§_-sa§) / 2;
                                       if(!_loc8_)
                                       {
                                          addr257:
                                          §§push(param2);
                                          §§push(§_-tW§.§_-SP§);
                                          if(!_loc8_)
                                          {
                                             §§push(this.§_-cr§);
                                             if(!(_loc8_ && param2))
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(!(_loc8_ && param2))
                                                {
                                                   addr279:
                                                   §§push(this.y);
                                                   if(!(_loc8_ && this))
                                                   {
                                                      §§goto(addr288);
                                                   }
                                                }
                                                §§goto(addr298);
                                             }
                                             addr288:
                                             §§push(§§pop() + §§pop());
                                             if(_loc9_ || param1)
                                             {
                                                addr298:
                                                §§push(§§pop() + §_-tW§.§_-PN§);
                                                if(!(_loc8_ && param2))
                                                {
                                                   §§push(§§pop() - param2.§_-cB§.top);
                                                }
                                             }
                                             §§pop().y = §§pop();
                                             §§goto(addr318);
                                          }
                                          §§goto(addr279);
                                       }
                                    }
                                    §§goto(addr318);
                                 }
                                 param2.y += §_-tW§.§_-PN§ + (§_-tW§.§_-SP§ - this.§_-cr§) / 2;
                                 if(!(_loc8_ && param2))
                                 {
                                    §§goto(addr318);
                                 }
                                 else
                                 {
                                    §§goto(addr257);
                                 }
                              }
                              §§goto(addr318);
                           }
                           §§goto(addr129);
                        }
                        else
                        {
                           §§goto(addr320);
                        }
                     }
                     addr318:
                     return false;
                  }
                  §§goto(addr67);
               }
               §§goto(addr320);
            }
            §§goto(addr321);
         }
         §§goto(addr48);
      }
      
      public function §_-lX§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            this.§_-sa§ = param1;
            if(_loc3_)
            {
               addr32:
               this.§_-cr§ = param2;
            }
            return;
         }
         §§goto(addr32);
      }
      
      override public function clone() : §_-ga§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-fs§ = new §_-fs§(time,duration,this.mName,this.§_-2i§,this.mX,this.mY);
         if(_loc3_ || _loc1_)
         {
            _loc1_.§_-BX§ = this.§_-BX§;
            if(!(_loc2_ && _loc1_))
            {
               _loc1_.§_-sa§ = this.§_-sa§;
               if(_loc3_ || _loc3_)
               {
               }
               §§goto(addr75);
            }
            _loc1_.§_-cr§ = this.§_-cr§;
         }
         addr75:
         return _loc1_;
      }
   }
}
