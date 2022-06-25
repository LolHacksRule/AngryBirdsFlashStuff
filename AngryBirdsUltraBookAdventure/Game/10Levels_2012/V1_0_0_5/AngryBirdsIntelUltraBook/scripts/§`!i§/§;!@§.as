package §`!i§
{
   import §'!9§.§?!U§;
   import §'!9§.DisplayObject;
   import §'!9§.DisplayObjectContainer;
   import §'!9§.Sprite;
   import §-w§.§+W§;
   import §-w§.§,Q§;
   import §-w§.§]c§;
   
   public class §;!@§ extends §8d§
   {
      
      public static const § 1§:String = "background";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            § 1§ = "background";
         }
      }
      
      private var mName:String;
      
      private var §!0§:String;
      
      private var §,G§:Number;
      
      private var §78§:Number;
      
      private var §'O§:Number;
      
      private var §!!A§:Number;
      
      private var §<q§:Number = 1.0;
      
      private var §&!Y§:Boolean = true;
      
      public function §;!@§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param2)
         {
            super(param1,param2);
            while(true)
            {
               this.mName = param3;
               addr118:
               while(!_loc8_)
               {
               }
            }
         }
         while(true)
         {
            this.§!0§ = param4;
            loop3:
            while(true)
            {
               this.§,G§ = param5;
               while(true)
               {
                  this.§78§ = param6;
                  loop5:
                  for(; _loc9_; while(!(_loc8_ && param1))
                  {
                     continue loop3;
                     §§goto(addr74);
                  })
                  {
                     if(!_loc8_)
                     {
                        §§push(!isNaN(param7));
                        if(!(_loc8_ && param3))
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc8_)
                                    {
                                       if(_loc8_ && this)
                                       {
                                          continue loop5;
                                       }
                                       this.§<q§ = param7;
                                    }
                                    break;
                                 }
                                 §§push(param7 > 0);
                                 addr94:
                                 break;
                                 if(_loc9_)
                                 {
                                    continue;
                                 }
                                 addr74:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop5;
                                 }
                                 addr74:
                              }
                              return;
                           }
                        }
                        §§goto(addr74);
                     }
                     else
                     {
                        §§goto(addr118);
                     }
                  }
               }
               if(_loc8_)
               {
                  continue;
               }
               §§goto(addr94);
            }
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §9!U§() : String
      {
         return this.§!0§;
      }
      
      public function get x() : Number
      {
         return this.§,G§;
      }
      
      public function get y() : Number
      {
         return this.§78§;
      }
      
      public function set §@!?§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&!Y§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§,Q§) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:DisplayObject = null;
         var _loc5_:§+W§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(_loc9_)
         {
            §§push(super.update(param1,param2,param3));
            if(_loc9_ || param1)
            {
               if(!§§pop())
               {
                  §§goto(addr46);
               }
               §§goto(addr259);
            }
            §§goto(addr260);
         }
         addr46:
         if(!(_loc4_ = §]c§.§!!h§(this.§9!U§,param3)))
         {
            if(!(_loc10_ && param1))
            {
               if(_loc5_ = param3.§6u§(this.§9!U§))
               {
                  (_loc4_ = new §?!U§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  if(!(_loc10_ && this))
                  {
                     _loc4_.pivotY = -_loc5_.pivotY;
                  }
               }
               §§goto(addr93);
            }
            §§goto(addr102);
         }
         addr93:
         if(_loc4_)
         {
            if(_loc9_ || param1)
            {
               addr102:
               if(_loc6_ = param2.getChildByName(§ 1§) as Sprite)
               {
                  if(_loc9_ || this)
                  {
                     param2 = _loc6_;
                     addr131:
                     §§push(_loc4_);
                     §§push(_loc4_.x);
                     if(_loc9_ || param1)
                     {
                        §§push(§§pop() + this.x);
                     }
                     §§pop().x = §§pop();
                     if(!(_loc10_ && param1))
                     {
                        addr152:
                        §§push(_loc4_);
                        §§push(_loc4_.y);
                        if(_loc9_ || param3)
                        {
                           §§push(§§pop() + this.y);
                        }
                        §§pop().y = §§pop();
                        if(!(_loc10_ && this))
                        {
                           addr173:
                           _loc4_.name = this.name;
                        }
                        if(_loc7_ = param2.getChildByName(this.name))
                        {
                           if(_loc9_ || param3)
                           {
                              (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                              if(_loc9_)
                              {
                                 _loc8_.addChild(_loc4_);
                                 if(!_loc10_)
                                 {
                                    addr211:
                                    if(this.name == § 1§)
                                    {
                                       if(_loc9_ || param3)
                                       {
                                          addr232:
                                          if(this.§&!Y§)
                                          {
                                             if(_loc10_ && param2)
                                             {
                                             }
                                             §§goto(addr257);
                                          }
                                       }
                                       §§goto(addr257);
                                    }
                                    _loc4_.scaleX = this.§<q§;
                                    if(!(_loc10_ && this))
                                    {
                                       _loc4_.scaleY = this.§<q§;
                                    }
                                    §§goto(addr257);
                                 }
                                 §§goto(addr232);
                              }
                              §§goto(addr257);
                           }
                        }
                        else
                        {
                           param2.addChild(_loc4_);
                        }
                        §§goto(addr211);
                     }
                     §§goto(addr173);
                  }
                  §§goto(addr152);
               }
               §§goto(addr131);
            }
            else
            {
               addr260:
               return true;
               addr259:
            }
         }
         addr257:
         return false;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§'O§ = param1;
            do
            {
               this.§!!A§ = param2;
            }
            while(_loc3_ && param2);
            
         }
      }
      
      override public function clone() : §8d§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§;!@§ = new §;!@§(time,duration,this.mName,this.§!0§,this.§,G§,this.§78§,this.§<q§);
         if(_loc3_)
         {
            _loc1_.§&!Y§ = this.§&!Y§;
            while(true)
            {
               _loc1_.§'O§ = this.§'O§;
               while(_loc3_ || this)
               {
                  _loc1_.§!!A§ = this.§!!A§;
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  return _loc1_;
                  addr73:
               }
            }
         }
         §§goto(addr73);
      }
   }
}
