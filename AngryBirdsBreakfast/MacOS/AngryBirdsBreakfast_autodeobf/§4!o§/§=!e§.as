package §4!o§
{
   import § ! §.§+D§;
   import § ! §.§5!x§;
   import § ! §.§8-§;
   import §6![§.§1!J§;
   import §6![§.DisplayObject;
   import §6![§.DisplayObjectContainer;
   import §6![§.Sprite;
   
   public class §=!e§ extends §0!c§
   {
      
      public static const §`]§:String = "background";
       
      
      private var mName:String;
      
      private var §1!m§:String;
      
      private var §%!3§:Number;
      
      private var §?!e§:Number;
      
      private var §<`§:Number;
      
      private var §#!A§:Number;
      
      private var §0q§:Number = 1.0;
      
      private var §`b§:Boolean = true;
      
      public function §=!e§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§1!m§ = param4;
         this.§%!3§ = param5;
         this.§?!e§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§0q§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §7!q§() : String
      {
         return this.§1!m§;
      }
      
      public function get x() : Number
      {
         return this.§%!3§;
      }
      
      public function get y() : Number
      {
         return this.§?!e§;
      }
      
      public function set §2z§(param1:Boolean) : void
      {
         this.§`b§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5!x§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§8-§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §+D§.§<p§(this.§7!q§,param3)))
            {
               if(_loc5_ = param3.§`I§(this.§7!q§))
               {
                  (_loc4_ = new §1!J§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§`]§) as Sprite)
               {
                  param2 = _loc6_;
               }
               _loc4_.x += this.x;
               _loc4_.y += this.y;
               _loc4_.name = this.name;
               if(_loc7_ = param2.getChildByName(this.name))
               {
                  (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                  _loc8_.addChild(_loc4_);
               }
               else
               {
                  param2.addChild(_loc4_);
               }
               if(this.name == §`]§)
               {
                  if(!this.§`b§)
                  {
                  }
               }
               _loc4_.scaleX = this.§0q§;
               _loc4_.scaleY = this.§0q§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§<`§ = param1;
         this.§#!A§ = param2;
      }
      
      override public function clone() : §0!c§
      {
         var _loc1_:§=!e§ = new §=!e§(time,duration,this.mName,this.§1!m§,this.§%!3§,this.§?!e§,this.§0q§);
         _loc1_.§`b§ = this.§`b§;
         _loc1_.§<`§ = this.§<`§;
         _loc1_.§#!A§ = this.§#!A§;
         return _loc1_;
      }
   }
}
