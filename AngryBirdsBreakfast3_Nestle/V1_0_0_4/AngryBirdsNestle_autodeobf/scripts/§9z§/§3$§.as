package §9z§
{
   import §-!f§.§-!,§;
   import §-!f§.DisplayObject;
   import §-!f§.DisplayObjectContainer;
   import §-!f§.Sprite;
   import §6_§.§,!>§;
   import §6_§.§7W§;
   import §6_§.§8!K§;
   
   public class §3$§ extends §"^§
   {
      
      public static const §+!-§:String = "background";
       
      
      private var mName:String;
      
      private var §5p§:String;
      
      private var §0!'§:Number;
      
      private var §#<§:Number;
      
      private var §<!"§:Number;
      
      private var §50§:Number;
      
      private var §&!H§:Number = 1.0;
      
      private var §>"5§:Boolean = true;
      
      public function §3$§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§5p§ = param4;
         this.§0!'§ = param5;
         this.§#<§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§&!H§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §4h§() : String
      {
         return this.§5p§;
      }
      
      public function get x() : Number
      {
         return this.§0!'§;
      }
      
      public function get y() : Number
      {
         return this.§#<§;
      }
      
      public function set §!!q§(param1:Boolean) : void
      {
         this.§>"5§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§,!>§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§7W§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §8!K§.§5!A§(this.§4h§,param3)))
            {
               if(_loc5_ = param3.§^!$§(this.§4h§))
               {
                  (_loc4_ = new §-!,§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§+!-§) as Sprite)
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
               if(this.name == §+!-§)
               {
                  if(!this.§>"5§)
                  {
                  }
               }
               _loc4_.scaleX = this.§&!H§;
               _loc4_.scaleY = this.§&!H§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§<!"§ = param1;
         this.§50§ = param2;
      }
      
      override public function clone() : §"^§
      {
         var _loc1_:§3$§ = new §3$§(time,duration,this.mName,this.§5p§,this.§0!'§,this.§#<§,this.§&!H§);
         _loc1_.§>"5§ = this.§>"5§;
         _loc1_.§<!"§ = this.§<!"§;
         _loc1_.§50§ = this.§50§;
         return _loc1_;
      }
   }
}
