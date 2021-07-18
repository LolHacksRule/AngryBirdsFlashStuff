package §%%§
{
   import §&"5§.§4!h§;
   import §&"5§.§6!L§;
   import §&"5§.§7!P§;
   import §default§.§=!Z§;
   import §default§.DisplayObject;
   import §default§.DisplayObjectContainer;
   import §default§.Sprite;
   
   public class §^d§ extends §#K§
   {
      
      public static const §8Z§:String = "background";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §8Z§ = "background";
         }
      }
      
      private var mName:String;
      
      private var §3!3§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §7!T§:Number;
      
      private var §>w§:Number;
      
      private var §,t§:Number = 1.0;
      
      private var §2!6§:Boolean = true;
      
      public function §^d§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.mName = param3;
               loop1:
               while(true)
               {
                  this.§3!3§ = param4;
                  while(true)
                  {
                     this.mX = param5;
                     continue loop1;
                     addr79:
                     if(!(_loc9_ || param1))
                     {
                        continue;
                     }
                     loop8:
                     while(true)
                     {
                        §§push(param7 > 0);
                        if(!(_loc8_ && this))
                        {
                           loop5:
                           while(§§pop())
                           {
                              if(_loc9_)
                              {
                                 if(!_loc9_)
                                 {
                                    loop6:
                                    while(_loc9_)
                                    {
                                       §§goto(addr79);
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop6;
                                       }
                                    }
                                    while(_loc9_)
                                    {
                                       §§push(!isNaN(param7));
                                       if(!(_loc8_ && param3))
                                       {
                                          if(!§§pop())
                                          {
                                             continue loop8;
                                             continue loop5;
                                          }
                                       }
                                       §§goto(addr76);
                                    }
                                    continue loop0;
                                    addr91:
                                 }
                                 this.§,t§ = param7;
                              }
                              if(!(_loc8_ && this))
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           return;
                        }
                        §§goto(addr76);
                     }
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §^!"§() : String
      {
         return this.§3!3§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set §1S§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§2!6§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§7!P§) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:DisplayObject = null;
         var _loc5_:§6!L§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!_loc10_)
         {
            §§push(super.update(param1,param2,param3));
            if(_loc9_)
            {
               if(!§§pop())
               {
                  addr41:
                  if(!(_loc4_ = §4!h§.§4!t§(this.§^!"§,param3)))
                  {
                     if(_loc9_ || param2)
                     {
                        if(_loc5_ = param3.§12§(this.§^!"§))
                        {
                           (_loc4_ = new §=!Z§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                           if(_loc9_)
                           {
                              _loc4_.pivotY = -_loc5_.pivotY;
                           }
                        }
                     }
                     addr235:
                     return true;
                     addr234:
                  }
                  if(_loc4_)
                  {
                     if(_loc9_)
                     {
                        if(_loc6_ = param2.getChildByName(§8Z§) as Sprite)
                        {
                           if(!(_loc10_ && param1))
                           {
                              param2 = _loc6_;
                              addr106:
                              §§push(_loc4_);
                              §§push(_loc4_.x);
                              if(!_loc10_)
                              {
                                 §§push(§§pop() + this.x);
                              }
                              §§pop().x = §§pop();
                              if(!(_loc10_ && param3))
                              {
                                 §§push(_loc4_);
                                 §§push(_loc4_.y);
                                 if(!(_loc10_ && param2))
                                 {
                                    §§push(§§pop() + this.y);
                                 }
                                 §§pop().y = §§pop();
                                 if(_loc9_ || this)
                                 {
                                    addr153:
                                    _loc4_.name = this.name;
                                 }
                                 if(_loc7_ = param2.getChildByName(this.name))
                                 {
                                    if(_loc9_ || this)
                                    {
                                       (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                                       if(!_loc10_)
                                       {
                                          _loc8_.addChild(_loc4_);
                                          if(!_loc10_)
                                          {
                                             addr191:
                                             if(this.name == §8Z§)
                                             {
                                                if(_loc9_ || this)
                                                {
                                                   addr202:
                                                   if(this.§2!6§)
                                                   {
                                                      if(_loc9_ || param1)
                                                      {
                                                         addr212:
                                                         _loc4_.scaleX = this.§,t§;
                                                         if(_loc10_)
                                                         {
                                                         }
                                                         §§goto(addr232);
                                                      }
                                                      _loc4_.scaleY = this.§,t§;
                                                      addr232:
                                                      return false;
                                                   }
                                                }
                                             }
                                             §§goto(addr212);
                                          }
                                          §§goto(addr202);
                                       }
                                       §§goto(addr212);
                                    }
                                 }
                                 else
                                 {
                                    param2.addChild(_loc4_);
                                 }
                                 §§goto(addr191);
                              }
                           }
                           §§goto(addr153);
                        }
                        §§goto(addr106);
                     }
                     else
                     {
                        §§goto(addr234);
                     }
                  }
                  §§goto(addr212);
               }
               §§goto(addr234);
            }
            §§goto(addr235);
         }
         §§goto(addr41);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§7!T§ = param1;
            do
            {
               this.§>w§ = param2;
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      override public function clone() : §#K§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§^d§ = new §^d§(time,duration,this.mName,this.§3!3§,this.mX,this.mY,this.§,t§);
         if(_loc3_ || _loc1_)
         {
            _loc1_.§2!6§ = this.§2!6§;
            do
            {
               _loc1_.§7!T§ = this.§7!T§;
               do
               {
                  _loc1_.§>w§ = this.§>w§;
               }
               while(!(_loc3_ || this));
               
            }
            while(_loc2_ && _loc3_);
            
         }
         return _loc1_;
      }
   }
}
