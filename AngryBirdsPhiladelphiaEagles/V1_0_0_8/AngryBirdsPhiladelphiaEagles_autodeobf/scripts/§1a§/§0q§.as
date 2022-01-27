package §1a§
{
   import §-!'§.§3!1§;
   import §-!'§.DisplayObject;
   import §-!'§.DisplayObjectContainer;
   import §-!'§.Sprite;
   import §<A§.§'K§;
   import §<A§.§8<§;
   import §<A§.§^!9§;
   
   public class §0q§ extends §#]§
   {
      
      public static const §?!I§:String = "background";
       
      
      private var mName:String;
      
      private var §3n§:String;
      
      private var §+Z§:Number;
      
      private var §04§:Number;
      
      private var §0!A§:Number;
      
      private var §3>§:Number;
      
      private var § E§:Number = 1.0;
      
      private var §!!%§:Boolean = true;
      
      public function §0q§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§3n§ = param4;
         this.§+Z§ = param5;
         this.§04§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§ E§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §,!$§() : String
      {
         return this.§3n§;
      }
      
      public function get x() : Number
      {
         return this.§+Z§;
      }
      
      public function get y() : Number
      {
         return this.§04§;
      }
      
      public function set §#"§(param1:Boolean) : void
      {
         this.§!!%§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'K§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§8<§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §^!9§.§=E§(this.§,!$§,param3)))
            {
               if(_loc5_ = param3.§@y§(this.§,!$§))
               {
                  (_loc4_ = new §3!1§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§?!I§) as Sprite)
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
               if(this.name == §?!I§)
               {
                  if(!this.§!!%§)
                  {
                  }
               }
               _loc4_.scaleX = this.§ E§;
               _loc4_.scaleY = this.§ E§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§0!A§ = param1;
         this.§3>§ = param2;
      }
      
      override public function clone() : §#]§
      {
         var _loc1_:§0q§ = new §0q§(time,duration,this.mName,this.§3n§,this.§+Z§,this.§04§,this.§ E§);
         _loc1_.§!!%§ = this.§!!%§;
         _loc1_.§0!A§ = this.§0!A§;
         _loc1_.§3>§ = this.§3>§;
         return _loc1_;
      }
   }
}
