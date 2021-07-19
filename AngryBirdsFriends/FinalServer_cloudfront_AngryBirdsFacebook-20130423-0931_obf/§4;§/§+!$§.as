package §4;§
{
   import §'!6§.§ "E§;
   import §'!6§.DisplayObject;
   import §'!6§.DisplayObjectContainer;
   import §'!6§.Sprite;
   import §<T§.§?!Z§;
   import §<T§.§^"5§;
   import §<T§.§`m§;
   
   public class §+!$§ extends §^g§
   {
      
      public static const §&!"§:String = "background";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §&!"§ = "background";
         }
      }
      
      private var mName:String;
      
      private var §@i§:String;
      
      private var §4!K§:Number;
      
      private var §7!#§:Number;
      
      private var §,>§:Number;
      
      private var §`;§:Number;
      
      private var §+"D§:Number = 1.0;
      
      private var §,!M§:Boolean = true;
      
      public function §+!$§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && this))
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.mName = param3;
               loop1:
               while(true)
               {
                  this.§@i§ = param4;
                  loop2:
                  while(true)
                  {
                     this.§4!K§ = param5;
                     loop3:
                     while(!_loc8_)
                     {
                        this.§7!#§ = param6;
                        loop4:
                        for(; !_loc8_; if(_loc8_ && param3)
                        {
                           continue;
                        },if(_loc8_)
                        {
                           continue loop3;
                        },§§goto(addr25))
                        {
                           §§push(!isNaN(param7));
                           if(_loc9_)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr96:
                                    loop7:
                                    while(true)
                                    {
                                       §§push(param7 > 0);
                                       if(!(_loc8_ && param3))
                                       {
                                          while(§§pop())
                                          {
                                             if(_loc9_ || param3)
                                             {
                                                if(_loc8_)
                                                {
                                                   continue loop0;
                                                }
                                                this.§+"D§ = param7;
                                             }
                                             if(!_loc8_)
                                             {
                                                continue loop4;
                                             }
                                             continue loop7;
                                          }
                                          addr25:
                                          return;
                                          addr40:
                                       }
                                    }
                                 }
                                 addr95:
                              }
                              §§goto(addr40);
                           }
                           §§goto(addr95);
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr96);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §4L§() : String
      {
         return this.§@i§;
      }
      
      public function get x() : Number
      {
         return this.§4!K§;
      }
      
      public function get y() : Number
      {
         return this.§7!#§;
      }
      
      public function set §7^§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§,!M§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§`m§) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:DisplayObject = null;
         var _loc5_:§^"5§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!_loc9_)
         {
            §§push(super.update(param1,param2,param3));
            if(!_loc9_)
            {
               if(!§§pop())
               {
                  §§goto(addr42);
               }
               §§goto(addr235);
            }
            §§goto(addr236);
         }
         addr42:
         if(!(_loc4_ = §?!Z§.§ "8§(this.§4L§,param3)))
         {
            if(_loc10_ || param1)
            {
               if(_loc5_ = param3.§#!L§(this.§4L§))
               {
                  (_loc4_ = new § "E§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  if(!_loc9_)
                  {
                     _loc4_.pivotY = -_loc5_.pivotY;
                  }
               }
            }
            addr236:
            return true;
            addr235:
         }
         if(_loc4_)
         {
            if(!(_loc9_ && this))
            {
               if(_loc6_ = param2.getChildByName(§&!"§) as Sprite)
               {
                  if(_loc10_)
                  {
                     param2 = _loc6_;
                     addr117:
                     §§push(_loc4_);
                     §§push(_loc4_.x);
                     if(!(_loc9_ && param3))
                     {
                        §§push(§§pop() + this.x);
                     }
                     §§pop().x = §§pop();
                     if(!(_loc9_ && param2))
                     {
                        addr138:
                        §§push(_loc4_);
                        §§push(_loc4_.y);
                        if(!(_loc9_ && param3))
                        {
                           §§push(§§pop() + this.y);
                        }
                        §§pop().y = §§pop();
                        if(!_loc9_)
                        {
                           addr154:
                           _loc4_.name = this.name;
                        }
                        if(_loc7_ = param2.getChildByName(this.name))
                        {
                           if(_loc10_)
                           {
                              (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                              if(!_loc9_)
                              {
                                 _loc8_.addChild(_loc4_);
                                 if(!_loc9_)
                                 {
                                    addr187:
                                    if(this.name == §&!"§)
                                    {
                                       if(_loc10_ || param2)
                                       {
                                          addr208:
                                          if(this.§,!M§)
                                          {
                                             if(!(_loc9_ && param3))
                                             {
                                                §§goto(addr218);
                                             }
                                          }
                                          §§goto(addr218);
                                       }
                                       _loc4_.scaleY = this.§+"D§;
                                    }
                                    §§goto(addr218);
                                 }
                                 §§goto(addr208);
                              }
                              §§goto(addr218);
                           }
                        }
                        else
                        {
                           param2.addChild(_loc4_);
                        }
                        §§goto(addr187);
                     }
                     §§goto(addr154);
                  }
                  §§goto(addr138);
               }
               §§goto(addr117);
            }
            else
            {
               §§goto(addr235);
            }
         }
         addr218:
         _loc4_.scaleX = this.§+"D§;
         if(_loc10_ || param1)
         {
         }
         return false;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§,>§ = param1;
            do
            {
               this.§`;§ = param2;
            }
            while(_loc3_);
            
         }
      }
      
      override public function clone() : §^g§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§+!$§ = new §+!$§(time,duration,this.mName,this.§@i§,this.§4!K§,this.§7!#§,this.§+"D§);
         if(!_loc2_)
         {
            _loc1_.§,!M§ = this.§,!M§;
            while(true)
            {
               _loc1_.§,>§ = this.§,>§;
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     _loc1_.§`;§ = this.§`;§;
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr76);
      }
   }
}
