package §%!>§
{
   import §<!N§.§&M§;
   import §<!N§.DisplayObject;
   import §<!N§.DisplayObjectContainer;
   import §<!N§.Sprite;
   import §^'§.§ !C§;
   import §^'§.§!!M§;
   import §^'§.§"'§;
   
   public class §-;§ extends §7!<§
   {
      
      public static const §#!!§:String = "background";
       
      
      private var mName:String;
      
      private var §=^§:String;
      
      private var §-o§:Number;
      
      private var §2!9§:Number;
      
      private var §0!4§:Number;
      
      private var §0!$§:Number;
      
      private var §1C§:Number = 1.0;
      
      private var §@t§:Boolean = true;
      
      public function §-;§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§=^§ = param4;
         this.§-o§ = param5;
         this.§2!9§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§1C§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §&!D§() : String
      {
         return this.§=^§;
      }
      
      public function get x() : Number
      {
         return this.§-o§;
      }
      
      public function get y() : Number
      {
         return this.§2!9§;
      }
      
      public function set §;W§(param1:Boolean) : void
      {
         this.§@t§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§ !C§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§!!M§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §"'§.§'C§(this.§&!D§,param3)))
            {
               if(_loc5_ = param3.§@h§(this.§&!D§))
               {
                  (_loc4_ = new §&M§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§#!!§) as Sprite)
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
               if(this.name == §#!!§)
               {
                  if(!this.§@t§)
                  {
                  }
               }
               _loc4_.scaleX = this.§1C§;
               _loc4_.scaleY = this.§1C§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§0!4§ = param1;
         this.§0!$§ = param2;
      }
      
      override public function clone() : §7!<§
      {
         var _loc1_:§-;§ = new §-;§(time,duration,this.mName,this.§=^§,this.§-o§,this.§2!9§,this.§1C§);
         _loc1_.§@t§ = this.§@t§;
         _loc1_.§0!4§ = this.§0!4§;
         _loc1_.§0!$§ = this.§0!$§;
         return _loc1_;
      }
   }
}
