package §="§
{
   import §&!5§.§'!$§;
   import §&!5§.DisplayObject;
   import §&!5§.DisplayObjectContainer;
   import §&!5§.Sprite;
   import §9!2§.§'![§;
   import §9!2§.§<j§;
   import §9!2§.§@o§;
   
   public class §1H§ extends §2!C§
   {
      
      public static const §&!C§:String = "background";
       
      
      private var mName:String;
      
      private var §=!B§:String;
      
      private var § !2§:Number;
      
      private var §'!F§:Number;
      
      private var §'n§:Number;
      
      private var §+!#§:Number;
      
      private var §>?§:Number = 1.0;
      
      private var §=7§:Boolean = true;
      
      public function §1H§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§=!B§ = param4;
         this.§ !2§ = param5;
         this.§'!F§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§>?§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §!!J§() : String
      {
         return this.§=!B§;
      }
      
      public function get x() : Number
      {
         return this.§ !2§;
      }
      
      public function get y() : Number
      {
         return this.§'!F§;
      }
      
      public function set §]!X§(param1:Boolean) : void
      {
         this.§=7§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'![§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§<j§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §@o§.§1!2§(this.§!!J§,param3)))
            {
               if(_loc5_ = param3.§&'§(this.§!!J§))
               {
                  (_loc4_ = new §'!$§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§&!C§) as Sprite)
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
               if(this.name == §&!C§)
               {
                  if(!this.§=7§)
                  {
                  }
               }
               _loc4_.scaleX = this.§>?§;
               _loc4_.scaleY = this.§>?§;
            }
            return false;
         }
         return true;
      }
      
      public function §#m§(param1:Number, param2:Number) : void
      {
         this.§'n§ = param1;
         this.§+!#§ = param2;
      }
      
      override public function clone() : §2!C§
      {
         var _loc1_:§1H§ = new §1H§(time,duration,this.mName,this.§=!B§,this.§ !2§,this.§'!F§,this.§>?§);
         _loc1_.§=7§ = this.§=7§;
         _loc1_.§'n§ = this.§'n§;
         _loc1_.§+!#§ = this.§+!#§;
         return _loc1_;
      }
   }
}
