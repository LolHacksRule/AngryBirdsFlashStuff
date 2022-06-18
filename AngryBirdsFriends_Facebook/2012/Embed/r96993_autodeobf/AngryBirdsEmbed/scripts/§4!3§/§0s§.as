package §4!3§
{
   import §6u§.§!B§;
   import §6u§.§&K§;
   import §6u§.§3W§;
   import §]!6§.§>T§;
   import §]!6§.DisplayObject;
   import §]!6§.DisplayObjectContainer;
   import §]!6§.Sprite;
   
   public class §0s§ extends §,d§
   {
      
      public static const §2m§:String = "background";
       
      
      private var mName:String;
      
      private var §6%§:String;
      
      private var §4F§:Number;
      
      private var §1v§:Number;
      
      private var §-!6§:Number;
      
      private var § B§:Number;
      
      private var §>!G§:Number = 1.0;
      
      private var §>v§:Boolean = true;
      
      public function §0s§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§6%§ = param4;
         this.§4F§ = param5;
         this.§1v§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§>!G§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §8!@§() : String
      {
         return this.§6%§;
      }
      
      public function get x() : Number
      {
         return this.§4F§;
      }
      
      public function get y() : Number
      {
         return this.§1v§;
      }
      
      public function set §?!4§(param1:Boolean) : void
      {
         this.§>v§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§3W§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§!B§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §&K§.§#!!§(this.§8!@§,param3)))
            {
               if(_loc5_ = param3.§ 8§(this.§8!@§))
               {
                  (_loc4_ = new §>T§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§2m§) as Sprite)
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
               if(this.name == §2m§)
               {
                  if(!this.§>v§)
                  {
                  }
               }
               _loc4_.scaleX = this.§>!G§;
               _loc4_.scaleY = this.§>!G§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§-!6§ = param1;
         this.§ B§ = param2;
      }
      
      override public function clone() : §,d§
      {
         var _loc1_:§0s§ = new §0s§(time,duration,this.mName,this.§6%§,this.§4F§,this.§1v§,this.§>!G§);
         _loc1_.§>v§ = this.§>v§;
         _loc1_.§-!6§ = this.§-!6§;
         _loc1_.§ B§ = this.§ B§;
         return _loc1_;
      }
   }
}
