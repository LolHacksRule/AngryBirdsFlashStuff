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
         if(_loc8_ || param2)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.mName = param3;
               loop1:
               while(true)
               {
                  this.§]X§ = param4;
                  loop2:
                  for(; _loc8_; if(!(_loc9_ && this))
                  {
                     continue loop1;
                  })
                  {
                     this.§#!!§ = param5;
                     while(true)
                     {
                        this.§!!3§ = param6;
                        loop4:
                        while(_loc8_)
                        {
                           §§push(!isNaN(param7));
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(§§pop())
                                 {
                                    if(_loc8_)
                                    {
                                       this.§2!#§ = param7;
                                    }
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                    addr69:
                                    while(_loc8_)
                                    {
                                       continue loop2;
                                    }
                                    continue loop4;
                                 }
                                 return;
                                 addr41:
                              }
                              while(true)
                              {
                                 §§pop();
                              }
                              §§goto(addr69);
                              addr34:
                              if(!(_loc8_ || param3))
                              {
                                 continue;
                              }
                              §§goto(addr41);
                           }
                        }
                     }
                  }
                  continue loop0;
                  if(!(_loc8_ || param2))
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(param7 > 0);
                     if(!_loc9_)
                     {
                        §§goto(addr34);
                     }
                     §§goto(addr68);
                  }
               }
            }
         }
         §§goto(addr95);
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
         if(_loc2_ || param1)
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
         if(!(_loc10_ && this))
         {
            §§push(super.update(param1,param2,param3));
            if(_loc9_ || param2)
            {
               if(!§§pop())
               {
                  §§goto(addr51);
               }
               §§goto(addr239);
            }
            §§goto(addr240);
         }
         addr51:
         if(!(_loc4_ = §4s§.§<Y§(this.§>c§,param3)))
         {
            if(_loc9_ || param3)
            {
               if(_loc5_ = param3.§&u§(this.§>c§))
               {
                  (_loc4_ = new §"<§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  if(_loc9_)
                  {
                     _loc4_.pivotY = -_loc5_.pivotY;
                  }
               }
            }
            addr240:
            return true;
            addr239:
         }
         if(_loc4_)
         {
            if(_loc9_)
            {
               if(_loc6_ = param2.getChildByName(§3t§) as Sprite)
               {
                  if(!(_loc10_ && param2))
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
                     if(!_loc10_)
                     {
                        addr142:
                        §§push(_loc4_);
                        §§push(_loc4_.y);
                        if(!_loc10_)
                        {
                           §§push(§§pop() + this.y);
                        }
                        §§pop().y = §§pop();
                        if(!(_loc10_ && this))
                        {
                           addr158:
                           _loc4_.name = this.name;
                        }
                        if(_loc7_ = param2.getChildByName(this.name))
                        {
                           if(_loc9_ || param3)
                           {
                              (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                              if(!(_loc10_ && param3))
                              {
                                 _loc8_.addChild(_loc4_);
                                 if(_loc9_)
                                 {
                                    addr201:
                                    if(this.name == §3t§)
                                    {
                                       if(_loc9_)
                                       {
                                          addr217:
                                          if(this.§#!L§)
                                          {
                                             if(_loc10_ && this)
                                             {
                                             }
                                             §§goto(addr237);
                                          }
                                       }
                                    }
                                    _loc4_.scaleX = this.§2!#§;
                                    if(!_loc10_)
                                    {
                                       _loc4_.scaleY = this.§2!#§;
                                    }
                                 }
                                 §§goto(addr237);
                              }
                              §§goto(addr217);
                           }
                        }
                        else
                        {
                           param2.addChild(_loc4_);
                        }
                        §§goto(addr201);
                     }
                     §§goto(addr158);
                  }
                  §§goto(addr142);
               }
               §§goto(addr126);
            }
            else
            {
               §§goto(addr239);
            }
         }
         addr237:
         return false;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§3!8§ = param1;
         }
         do
         {
            this.§0!Q§ = param2;
         }
         while(!_loc3_);
         
      }
      
      override public function clone() : §?!t§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§1$§ = new §1$§(time,duration,this.mName,this.§]X§,this.§#!!§,this.§!!3§,this.§2!#§);
         if(_loc2_ || _loc1_)
         {
            _loc1_.§#!L§ = this.§#!L§;
            while(true)
            {
               _loc1_.§3!8§ = this.§3!8§;
               while(_loc2_ || _loc2_)
               {
                  _loc1_.§0!Q§ = this.§0!Q§;
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  return _loc1_;
                  addr77:
               }
            }
         }
         §§goto(addr77);
      }
   }
}
