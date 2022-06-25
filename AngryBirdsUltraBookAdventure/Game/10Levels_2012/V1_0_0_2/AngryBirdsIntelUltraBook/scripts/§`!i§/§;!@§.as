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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
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
         if(_loc9_)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.mName = param3;
               loop1:
               while(true)
               {
                  this.§!0§ = param4;
                  loop2:
                  while(true)
                  {
                     this.§,G§ = param5;
                     while(true)
                     {
                        this.§78§ = param6;
                        loop4:
                        for(; !_loc8_; while(true)
                        {
                           if(!(_loc8_ && param3))
                           {
                              continue loop2;
                           }
                           continue loop4;
                        })
                        {
                           §§push(!isNaN(param7));
                           loop5:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(§§pop())
                                 {
                                    if(!_loc9_)
                                    {
                                       continue loop4;
                                    }
                                    if(!(_loc9_ || this))
                                    {
                                       while(true)
                                       {
                                          if(_loc8_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(param7 > 0);
                                          if(_loc9_ || param3)
                                          {
                                             continue loop5;
                                          }
                                       }
                                       continue loop5;
                                       addr101:
                                    }
                                    if(!_loc9_)
                                    {
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       this.§<q§ = param7;
                                       continue loop4;
                                    }
                                 }
                                 addr20:
                                 return;
                                 addr42:
                              }
                              while(true)
                              {
                                 §§pop();
                                 §§goto(addr101);
                              }
                           }
                        }
                     }
                     if(!(_loc9_ || param3))
                     {
                        continue;
                     }
                     §§goto(addr20);
                  }
               }
            }
         }
         §§goto(addr65);
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
         if(!(_loc10_ && this))
         {
            §§push(super.update(param1,param2,param3));
            if(!_loc10_)
            {
               if(!§§pop())
               {
                  §§goto(addr46);
               }
               §§goto(addr224);
            }
            §§goto(addr225);
         }
         addr46:
         if(!(_loc4_ = §]c§.§!!h§(this.§9!U§,param3)))
         {
            if(!(_loc10_ && param2))
            {
               if(_loc5_ = param3.§6u§(this.§9!U§))
               {
                  (_loc4_ = new §?!U§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  if(!_loc10_)
                  {
                     _loc4_.pivotY = -_loc5_.pivotY;
                  }
               }
               §§goto(addr88);
            }
            §§goto(addr92);
         }
         addr88:
         if(_loc4_)
         {
            if(!_loc10_)
            {
               addr92:
               if(_loc6_ = param2.getChildByName(§ 1§) as Sprite)
               {
                  if(_loc9_)
                  {
                     param2 = _loc6_;
                     addr116:
                     §§push(_loc4_);
                     §§push(_loc4_.x);
                     if(!_loc10_)
                     {
                        §§push(§§pop() + this.x);
                     }
                     §§pop().x = §§pop();
                     if(_loc9_)
                     {
                        addr127:
                        §§push(_loc4_);
                        §§push(_loc4_.y);
                        if(!_loc10_)
                        {
                           §§push(§§pop() + this.y);
                        }
                        §§pop().y = §§pop();
                        if(_loc9_ || param3)
                        {
                           addr143:
                           _loc4_.name = this.name;
                        }
                        if(_loc7_ = param2.getChildByName(this.name))
                        {
                           if(!(_loc10_ && param2))
                           {
                              (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                              if(!_loc10_)
                              {
                                 _loc8_.addChild(_loc4_);
                                 if(_loc9_ || param1)
                                 {
                                    addr186:
                                    if(this.name == § 1§)
                                    {
                                       if(_loc9_)
                                       {
                                          if(this.§&!Y§)
                                          {
                                             if(!_loc9_)
                                             {
                                             }
                                             §§goto(addr222);
                                          }
                                       }
                                       §§goto(addr222);
                                    }
                                 }
                              }
                              _loc4_.scaleX = this.§<q§;
                              if(_loc9_ || this)
                              {
                                 _loc4_.scaleY = this.§<q§;
                              }
                              §§goto(addr222);
                           }
                        }
                        else
                        {
                           param2.addChild(_loc4_);
                        }
                        §§goto(addr186);
                     }
                     §§goto(addr143);
                  }
                  §§goto(addr127);
               }
               §§goto(addr116);
            }
            else
            {
               addr225:
               return true;
               addr224:
            }
         }
         addr222:
         return false;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§'O§ = param1;
            do
            {
               this.§!!A§ = param2;
            }
            while(_loc4_ && this);
            
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
            do
            {
               _loc1_.§'O§ = this.§'O§;
               do
               {
                  _loc1_.§!!A§ = this.§!!A§;
               }
               while(_loc2_ && _loc3_);
               
            }
            while(_loc2_ && _loc3_);
            
         }
         return _loc1_;
      }
   }
}
