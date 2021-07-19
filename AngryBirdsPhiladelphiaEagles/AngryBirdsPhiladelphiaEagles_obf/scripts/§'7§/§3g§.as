package §'7§
{
   import § N§.§1!A§;
   import § N§.DisplayObject;
   import § N§.DisplayObjectContainer;
   import § N§.Sprite;
   import §#e§.§%Y§;
   import §#e§.§'?§;
   import §#e§.§`!9§;
   
   public class §3g§ extends §@!F§
   {
      
      public static const §,V§:String = "background";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §,V§ = "background";
         }
      }
      
      private var mName:String;
      
      private var §4!6§:String;
      
      private var §]!B§:Number;
      
      private var §5G§:Number;
      
      private var §6! §:Number;
      
      private var §@g§:Number;
      
      private var §^!7§:Number = 1.0;
      
      private var §96§:Boolean = true;
      
      public function §3g§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            super(param1,param2);
            while(true)
            {
               this.mName = param3;
            }
            addr135:
         }
         loop1:
         while(true)
         {
            this.§4!6§ = param4;
            loop2:
            while(_loc9_)
            {
               this.§]!B§ = param5;
               while(true)
               {
                  this.§5G§ = param6;
                  loop4:
                  while(!(_loc8_ && param2))
                  {
                     §§push(!isNaN(param7));
                     loop5:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(§§pop())
                           {
                              if(!(_loc8_ && param2))
                              {
                                 continue loop1;
                              }
                              addr71:
                              if(_loc9_ || param2)
                              {
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                                 continue loop2;
                              }
                              loop7:
                              while(!_loc8_)
                              {
                                 §§push(param7 > 0);
                                 if(!(_loc8_ && this))
                                 {
                                    continue loop5;
                                 }
                                 addr88:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop7;
                                 }
                              }
                              continue loop4;
                           }
                           return;
                           addr42:
                        }
                        §§goto(addr88);
                     }
                  }
               }
            }
            §§goto(addr135);
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §!C§() : String
      {
         return this.§4!6§;
      }
      
      public function get x() : Number
      {
         return this.§]!B§;
      }
      
      public function get y() : Number
      {
         return this.§5G§;
      }
      
      public function set §2h§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§96§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'?§) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:DisplayObject = null;
         var _loc5_:§`!9§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(_loc10_ || param2)
         {
            §§push(super.update(param1,param2,param3));
            if(_loc10_ || this)
            {
               if(!§§pop())
               {
                  §§goto(addr52);
               }
               §§goto(addr225);
            }
            §§goto(addr226);
         }
         addr52:
         if(!(_loc4_ = §%Y§.§3k§(this.§!C§,param3)))
         {
            if(_loc10_ || this)
            {
               if(_loc5_ = param3.§&! §(this.§!C§))
               {
                  (_loc4_ = new §1!A§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  if(_loc10_)
                  {
                     _loc4_.pivotY = -_loc5_.pivotY;
                  }
               }
            }
            addr226:
            return true;
            addr225:
         }
         if(_loc4_)
         {
            if(!_loc9_)
            {
               if(_loc6_ = param2.getChildByName(§,V§) as Sprite)
               {
                  if(_loc10_ || param2)
                  {
                     param2 = _loc6_;
                     addr127:
                     §§push(_loc4_);
                     §§push(_loc4_.x);
                     if(!_loc9_)
                     {
                        §§push(§§pop() + this.x);
                     }
                     §§pop().x = §§pop();
                     if(_loc10_)
                     {
                        §§push(_loc4_);
                        §§push(_loc4_.y);
                        if(!_loc9_)
                        {
                           §§push(§§pop() + this.y);
                        }
                        §§pop().y = §§pop();
                        if(_loc10_)
                        {
                           _loc4_.name = this.name;
                        }
                     }
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
                              addr182:
                              if(this.name == §,V§)
                              {
                                 if(!(_loc9_ && this))
                                 {
                                    if(this.§96§)
                                    {
                                       if(_loc10_)
                                       {
                                          §§goto(addr208);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr208);
                           }
                           _loc4_.scaleY = this.§^!7§;
                        }
                        §§goto(addr208);
                     }
                  }
                  else
                  {
                     param2.addChild(_loc4_);
                  }
                  §§goto(addr182);
               }
               §§goto(addr127);
            }
            else
            {
               §§goto(addr225);
            }
         }
         addr208:
         _loc4_.scaleX = this.§^!7§;
         if(_loc10_ || param3)
         {
         }
         return false;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§6! § = param1;
            do
            {
               this.§@g§ = param2;
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      override public function clone() : §@!F§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§3g§ = new §3g§(time,duration,this.mName,this.§4!6§,this.§]!B§,this.§5G§,this.§^!7§);
         if(!_loc2_)
         {
            _loc1_.§96§ = this.§96§;
            while(true)
            {
               _loc1_.§6! § = this.§6! §;
               while(!(_loc2_ && _loc1_))
               {
                  _loc1_.§@g§ = this.§@g§;
                  if(_loc2_)
                  {
                     continue;
                  }
                  return _loc1_;
                  addr68:
               }
            }
         }
         §§goto(addr68);
      }
   }
}
