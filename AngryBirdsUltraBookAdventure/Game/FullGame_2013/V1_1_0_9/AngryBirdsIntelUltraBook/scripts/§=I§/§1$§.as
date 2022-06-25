package §=I§
{
   import §=`§.§#`§;
   import §=`§.§4s§;
   import §=`§.§6!I§;
   import §`g§.§"<§;
   import §`g§.DisplayObject;
   import §`g§.DisplayObjectContainer;
   import §`g§.Sprite;
   
   public class §1$§ extends §?!t§
   {
      
      public static const §3t§:String = "background";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §3t§ = "background";
         }
      }
      
      private var mName:String;
      
      private var §]X§:String;
      
      private var §#!!§:Number;
      
      private var §!!3§:Number;
      
      private var §3!8§:Number;
      
      private var §0!Q§:Number;
      
      private var §2!#§:Number = 1.0;
      
      private var §#!L§:Boolean = true;
      
      public function §1$§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || this)
         {
            super(param1,param2);
         }
         loop0:
         while(true)
         {
            this.mName = param3;
            loop1:
            while(true)
            {
               this.§]X§ = param4;
               loop2:
               while(true)
               {
                  this.§#!!§ = param5;
                  loop3:
                  while(!_loc9_)
                  {
                     this.§!!3§ = param6;
                     loop4:
                     while(true)
                     {
                        §§push(!isNaN(param7));
                        if(_loc8_)
                        {
                           if(§§pop())
                           {
                              loop7:
                              while(true)
                              {
                                 §§pop();
                                 addr83:
                                 while(!_loc9_)
                                 {
                                    if(_loc9_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(param7 > 0);
                                    if(_loc9_ && this)
                                    {
                                    }
                                    continue loop7;
                                 }
                                 continue loop2;
                              }
                              addr82:
                           }
                           while(§§pop())
                           {
                              if(!_loc9_)
                              {
                                 if(!_loc9_)
                                 {
                                    this.§2!#§ = param7;
                                 }
                                 else
                                 {
                                    §§goto(addr83);
                                 }
                              }
                              if(_loc8_)
                              {
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                              §§goto(addr87);
                           }
                           return;
                        }
                        §§goto(addr82);
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §>c§() : String
      {
         return this.§]X§;
      }
      
      public function get x() : Number
      {
         return this.§#!!§;
      }
      
      public function get y() : Number
      {
         return this.§!!3§;
      }
      
      public function set §-!m§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§#!L§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§6!I§) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:DisplayObject = null;
         var _loc5_:§#`§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!(_loc10_ && param2))
         {
            §§push(super.update(param1,param2,param3));
            if(!_loc10_)
            {
               if(!§§pop())
               {
                  §§goto(addr46);
               }
               §§goto(addr244);
            }
            §§goto(addr245);
         }
         addr46:
         if(!(_loc4_ = §4s§.§<Y§(this.§>c§,param3)))
         {
            if(!(_loc10_ && this))
            {
               if(_loc5_ = param3.§&u§(this.§>c§))
               {
                  (_loc4_ = new §"<§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  if(_loc9_ || param3)
                  {
                     _loc4_.pivotY = -_loc5_.pivotY;
                  }
               }
               §§goto(addr93);
            }
            §§goto(addr97);
         }
         addr93:
         if(_loc4_)
         {
            if(_loc9_)
            {
               addr97:
               if(_loc6_ = param2.getChildByName(§3t§) as Sprite)
               {
                  if(_loc9_ || param1)
                  {
                     param2 = _loc6_;
                     addr126:
                     §§push(_loc4_);
                     §§push(_loc4_.x);
                     if(!(_loc10_ && this))
                     {
                        §§push(§§pop() + this.x);
                     }
                     §§pop().x = §§pop();
                     if(!(_loc10_ && param1))
                     {
                        §§push(_loc4_);
                        §§push(_loc4_.y);
                        if(_loc9_)
                        {
                           §§push(§§pop() + this.y);
                        }
                        §§pop().y = §§pop();
                        if(_loc9_)
                        {
                           addr158:
                           _loc4_.name = this.name;
                        }
                        if(_loc7_ = param2.getChildByName(this.name))
                        {
                           if(!(_loc10_ && param1))
                           {
                              (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                              if(!(_loc10_ && param2))
                              {
                                 _loc8_.addChild(_loc4_);
                                 if(_loc10_ && this)
                                 {
                                 }
                              }
                              §§goto(addr242);
                           }
                        }
                        else
                        {
                           param2.addChild(_loc4_);
                        }
                        if(this.name == §3t§)
                        {
                           if(!(_loc10_ && param3))
                           {
                              if(this.§#!L§)
                              {
                                 if(_loc9_)
                                 {
                                    addr232:
                                    _loc4_.scaleX = this.§2!#§;
                                    if(_loc10_)
                                    {
                                    }
                                    §§goto(addr242);
                                 }
                                 _loc4_.scaleY = this.§2!#§;
                                 §§goto(addr242);
                              }
                           }
                        }
                        §§goto(addr232);
                     }
                  }
                  §§goto(addr158);
               }
               §§goto(addr126);
            }
            else
            {
               addr245:
               return true;
               addr244:
            }
         }
         addr242:
         return false;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§3!8§ = param1;
         }
         do
         {
            this.§0!Q§ = param2;
         }
         while(_loc3_ && _loc3_);
         
      }
      
      override public function clone() : §?!t§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§1$§ = new §1$§(time,duration,this.mName,this.§]X§,this.§#!!§,this.§!!3§,this.§2!#§);
         if(!_loc2_)
         {
            _loc1_.§#!L§ = this.§#!L§;
            while(true)
            {
               _loc1_.§3!8§ = this.§3!8§;
               §§goto(addr76);
            }
         }
         addr76:
         while(true)
         {
            _loc1_.§0!Q§ = this.§0!Q§;
            if(_loc3_)
            {
               if(_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
         return _loc1_;
      }
   }
}
