package §-!5§
{
   import §4"@§.§?!0§;
   import §4"@§.DisplayObject;
   import §4"@§.DisplayObjectContainer;
   import §4"@§.Sprite;
   import §^e§.§0"1§;
   import §^e§.§7!R§;
   import §^e§.§>b§;
   
   public class §%!v§ extends §6!t§
   {
      
      public static const §8!r§:String = "background";
       
      
      private var mName:String;
      
      private var §9!z§:String;
      
      private var §1!`§:Number;
      
      private var §<2§:Number;
      
      private var §'!K§:Number;
      
      private var §%O§:Number;
      
      private var §`" §:Number = 1.0;
      
      private var §'"E§:Boolean = true;
      
      public function §%!v§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§9!z§ = param4;
         this.§1!`§ = param5;
         this.§<2§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§`" § = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §8!h§() : String
      {
         return this.§9!z§;
      }
      
      public function get x() : Number
      {
         return this.§1!`§;
      }
      
      public function get y() : Number
      {
         return this.§<2§;
      }
      
      public function set §>",§(param1:Boolean) : void
      {
         this.§'"E§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§0"1§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§7!R§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §>b§.§#2§(this.§8!h§,param3)))
            {
               if(_loc5_ = param3.getTexture(this.§8!h§))
               {
                  (_loc4_ = new §?!0§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§8!r§) as Sprite)
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
               if(this.name == §8!r§)
               {
                  if(!this.§'"E§)
                  {
                  }
               }
               _loc4_.scaleX = this.§`" §;
               _loc4_.scaleY = this.§`" §;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§'!K§ = param1;
         this.§%O§ = param2;
      }
      
      override public function clone() : §6!t§
      {
         var _loc1_:§%!v§ = new §%!v§(time,duration,this.mName,this.§9!z§,this.§1!`§,this.§<2§,this.§`" §);
         _loc1_.§'"E§ = this.§'"E§;
         _loc1_.§'!K§ = this.§'!K§;
         _loc1_.§%O§ = this.§%O§;
         return _loc1_;
      }
   }
}
