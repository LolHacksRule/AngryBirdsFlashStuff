package §_-n§
{
   import §_-8d§.§_-0FF§;
   import §_-8d§.§_-mB§;
   import §_-8d§.§_-vz§;
   import §_-uY§.DisplayObject;
   import §_-uY§.DisplayObjectContainer;
   import §_-uY§.Sprite;
   import §_-uY§.§_-09b§;
   
   public class §_-fn§ extends §_-tC§
   {
      
      public static const §_-a9§:String = "background";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-a9§ = "background";
         }
      }
      
      private var mName:String;
      
      private var §_-ml§:String;
      
      private var §_-c§:Number;
      
      private var §_-l1§:Number;
      
      private var §_-ux§:Number;
      
      private var §_-09f§:Number;
      
      private var §_-O6§:Number = 1.0;
      
      private var §_-0EB§:Boolean = true;
      
      public function §_-fn§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            super(param1,param2);
            while(true)
            {
               this.mName = param3;
               loop1:
               while(true)
               {
                  this.§_-ml§ = param4;
                  loop2:
                  while(true)
                  {
                     this.§_-c§ = param5;
                     loop3:
                     while(true)
                     {
                        this.§_-l1§ = param6;
                        loop4:
                        while(true)
                        {
                           §§push(!isNaN(param7));
                           if(!_loc9_)
                           {
                              if(§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§pop();
                                    addr102:
                                    while(!_loc9_)
                                    {
                                       §§push(param7 > 0);
                                       if(_loc8_ || param3)
                                       {
                                       }
                                       continue loop7;
                                    }
                                    continue loop2;
                                 }
                                 addr101:
                              }
                              while(§§pop())
                              {
                                 if(!(_loc9_ && this))
                                 {
                                    if(_loc8_ || param2)
                                    {
                                       if(_loc9_)
                                       {
                                          break loop4;
                                       }
                                       while(true)
                                       {
                                          this.§_-O6§ = param7;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr102);
                                    }
                                 }
                                 while(true)
                                 {
                                    if(_loc8_)
                                    {
                                       continue loop3;
                                    }
                                    continue loop4;
                                 }
                                 §§goto(addr104);
                              }
                              §§goto(addr19);
                           }
                           §§goto(addr101);
                        }
                        continue loop1;
                     }
                  }
               }
               if(!(_loc9_ && param1))
               {
                  addr19:
                  return;
               }
            }
         }
         §§goto(addr62);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §_-1z§() : String
      {
         return this.§_-ml§;
      }
      
      public function get x() : Number
      {
         return this.§_-c§;
      }
      
      public function get y() : Number
      {
         return this.§_-l1§;
      }
      
      public function set §_-pm§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§_-0EB§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§_-0FF§) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:DisplayObject = null;
         var _loc5_:§_-vz§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!_loc9_)
         {
            §§push(super.update(param1,param2,param3));
            if(!(_loc9_ && param3))
            {
               if(!§§pop())
               {
                  addr47:
                  if(!(_loc4_ = §_-mB§.§_-pc§(this.§_-1z§,param3)))
                  {
                     if(!_loc9_)
                     {
                        if(_loc5_ = param3.§_-70§(this.§_-1z§))
                        {
                           (_loc4_ = new §_-09b§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                           if(!(_loc9_ && param1))
                           {
                              _loc4_.pivotY = -_loc5_.pivotY;
                           }
                        }
                     }
                     addr246:
                     return true;
                     addr245:
                  }
                  if(_loc4_)
                  {
                     if(!(_loc9_ && this))
                     {
                        if(_loc6_ = param2.getChildByName(§_-a9§) as Sprite)
                        {
                           if(!_loc9_)
                           {
                              param2 = _loc6_;
                              addr122:
                              §§push(_loc4_);
                              §§push(_loc4_.x);
                              if(_loc10_)
                              {
                                 §§push(§§pop() + this.x);
                              }
                              §§pop().x = §§pop();
                              if(_loc10_ || this)
                              {
                                 addr138:
                                 §§push(_loc4_);
                                 §§push(_loc4_.y);
                                 if(_loc10_ || param3)
                                 {
                                    §§push(§§pop() + this.y);
                                 }
                                 §§pop().y = §§pop();
                                 if(!(_loc9_ && param2))
                                 {
                                    addr159:
                                    _loc4_.name = this.name;
                                 }
                                 if(_loc7_ = param2.getChildByName(this.name))
                                 {
                                    if(!(_loc9_ && param3))
                                    {
                                       (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                                       if(_loc10_ || param1)
                                       {
                                          _loc8_.addChild(_loc4_);
                                          if(_loc10_ || param3)
                                          {
                                             addr207:
                                             if(this.name == §_-a9§)
                                             {
                                                if(!(_loc9_ && param2))
                                                {
                                                   addr228:
                                                   if(this.§_-0EB§)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                      }
                                                      §§goto(addr243);
                                                   }
                                                }
                                             }
                                             _loc4_.scaleX = this.§_-O6§;
                                             if(_loc10_)
                                             {
                                                _loc4_.scaleY = this.§_-O6§;
                                                §§goto(addr243);
                                             }
                                             addr243:
                                             return false;
                                             addr203:
                                          }
                                          §§goto(addr228);
                                       }
                                       §§goto(addr203);
                                    }
                                 }
                                 else
                                 {
                                    param2.addChild(_loc4_);
                                 }
                                 §§goto(addr207);
                              }
                              §§goto(addr159);
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr122);
                     }
                     else
                     {
                        §§goto(addr245);
                     }
                  }
                  §§goto(addr243);
               }
               §§goto(addr245);
            }
            §§goto(addr246);
         }
         §§goto(addr47);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§_-ux§ = param1;
            do
            {
               this.§_-09f§ = param2;
            }
            while(!(_loc4_ || this));
            
         }
      }
      
      override public function clone() : §_-tC§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-fn§ = new §_-fn§(time,duration,this.mName,this.§_-ml§,this.§_-c§,this.§_-l1§,this.§_-O6§);
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.§_-0EB§ = this.§_-0EB§;
            do
            {
               _loc1_.§_-ux§ = this.§_-ux§;
               do
               {
                  _loc1_.§_-09f§ = this.§_-09f§;
               }
               while(!_loc2_);
               
            }
            while(_loc3_);
            
         }
         return _loc1_;
      }
   }
}
