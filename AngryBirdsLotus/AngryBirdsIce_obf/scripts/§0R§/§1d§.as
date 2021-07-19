package §0R§
{
   import §1n§.§"#§;
   import §1n§.§1D§;
   import §1n§.§5#§;
   import §^V§.§1!,§;
   import §^V§.DisplayObject;
   import §^V§.DisplayObjectContainer;
   import §^V§.Sprite;
   
   public class §1d§ extends §6! §
   {
      
      public static const §0k§:String = "background";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §0k§ = "background";
         }
      }
      
      private var mName:String;
      
      private var §9!+§:String;
      
      private var §-Y§:Number;
      
      private var §%!;§:Number;
      
      private var §?!#§:Number;
      
      private var §26§:Number;
      
      private var §%2§:Number = 1.0;
      
      private var §7!,§:Boolean = true;
      
      public function §1d§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && this))
         {
            super(param1,param2);
            while(true)
            {
               this.mName = param3;
               loop1:
               while(true)
               {
                  this.§9!+§ = param4;
                  this.§-Y§ = param5;
                  this.§%!;§ = param6;
                  §§push(!isNaN(param7));
                  if(!_loc9_)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(_loc8_)
                           {
                              if(!_loc8_)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                           loop3:
                           while(true)
                           {
                              §§push(param7 > 0);
                              if(_loc8_ || param3)
                              {
                                 break;
                              }
                              addr85:
                              while(true)
                              {
                                 §§pop();
                                 continue loop3;
                              }
                           }
                        }
                        §§goto(addr24);
                     }
                  }
                  §§goto(addr85);
               }
            }
         }
         addr24:
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §`z§() : String
      {
         return this.§9!+§;
      }
      
      public function get x() : Number
      {
         return this.§-Y§;
      }
      
      public function get y() : Number
      {
         return this.§%!;§;
      }
      
      public function set §1c§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§7!,§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5#§) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:DisplayObject = null;
         var _loc5_:§1D§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(_loc9_)
         {
            §§push(super.update(param1,param2,param3));
            if(_loc9_)
            {
               if(!§§pop())
               {
                  §§goto(addr41);
               }
               §§goto(addr214);
            }
            §§goto(addr215);
         }
         addr41:
         if(!(_loc4_ = §"#§.§-"§(this.§`z§,param3)))
         {
            if(_loc9_ || param2)
            {
               if(_loc5_ = param3.§,Y§(this.§`z§))
               {
                  (_loc4_ = new §1!,§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  if(_loc9_ || param1)
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
            if(_loc9_)
            {
               addr92:
               if(_loc6_ = param2.getChildByName(§0k§) as Sprite)
               {
                  if(_loc9_ || this)
                  {
                     param2 = _loc6_;
                     addr121:
                     §§push(_loc4_);
                     §§push(_loc4_.x);
                     if(!_loc10_)
                     {
                        §§push(§§pop() + this.x);
                     }
                     §§pop().x = §§pop();
                     if(!(_loc10_ && param1))
                     {
                        addr137:
                        §§push(_loc4_);
                        §§push(_loc4_.y);
                        if(_loc9_)
                        {
                           §§push(§§pop() + this.y);
                        }
                        §§pop().y = §§pop();
                        if(_loc9_)
                        {
                           addr148:
                           _loc4_.name = this.name;
                        }
                        if(_loc7_ = param2.getChildByName(this.name))
                        {
                           if(_loc9_)
                           {
                              (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                              if(!_loc10_)
                              {
                                 _loc8_.addChild(_loc4_);
                                 if(!_loc9_)
                                 {
                                 }
                                 §§goto(addr212);
                              }
                           }
                        }
                        else
                        {
                           param2.addChild(_loc4_);
                        }
                        if(this.name == §0k§)
                        {
                           if(!_loc10_)
                           {
                              if(this.§7!,§)
                              {
                                 if(_loc9_)
                                 {
                                    addr202:
                                    _loc4_.scaleX = this.§%2§;
                                    if(!_loc9_)
                                    {
                                    }
                                    §§goto(addr212);
                                 }
                                 _loc4_.scaleY = this.§%2§;
                                 §§goto(addr212);
                              }
                           }
                           §§goto(addr212);
                        }
                        §§goto(addr202);
                     }
                     §§goto(addr148);
                  }
                  §§goto(addr137);
               }
               §§goto(addr121);
            }
            else
            {
               addr215:
               return true;
               addr214:
            }
         }
         addr212:
         return false;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§?!#§ = param1;
            do
            {
               this.§26§ = param2;
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      override public function clone() : §6! §
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§1d§ = new §1d§(time,duration,this.mName,this.§9!+§,this.§-Y§,this.§%!;§,this.§%2§);
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.§7!,§ = this.§7!,§;
            while(true)
            {
               _loc1_.§?!#§ = this.§?!#§;
               §§goto(addr85);
            }
         }
         addr85:
         while(true)
         {
            _loc1_.§26§ = this.§26§;
            if(_loc2_ || _loc1_)
            {
               if(_loc2_)
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
