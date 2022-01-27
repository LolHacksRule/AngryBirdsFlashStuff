package §3!Z§
{
   import §9t§.§35§;
   import §9t§.§6!_§;
   import §9t§.§=!>§;
   import §^a§.§6p§;
   import §^a§.DisplayObject;
   import §^a§.DisplayObjectContainer;
   import §^a§.Sprite;
   
   public class §+M§ extends §!'§
   {
      
      public static const §,z§:String = "background";
       
      
      private var mName:String;
      
      private var §#W§:String;
      
      private var §7F§:Number;
      
      private var §6_§:Number;
      
      private var §]>§:Number;
      
      private var §7w§:Number;
      
      private var §4!_§:Number = 1.0;
      
      private var §;1§:Boolean = true;
      
      public function §+M§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§#W§ = param4;
         this.§7F§ = param5;
         this.§6_§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§4!_§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §@!S§() : String
      {
         return this.§#W§;
      }
      
      public function get x() : Number
      {
         return this.§7F§;
      }
      
      public function get y() : Number
      {
         return this.§6_§;
      }
      
      public function set §-+§(param1:Boolean) : void
      {
         this.§;1§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§=!>§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§35§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §6!_§.§&m§(this.§@!S§,param3)))
            {
               if(_loc5_ = param3.§=!+§(this.§@!S§))
               {
                  (_loc4_ = new §6p§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§,z§) as Sprite)
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
               if(this.name == §,z§)
               {
                  if(!this.§;1§)
                  {
                  }
               }
               _loc4_.scaleX = this.§4!_§;
               _loc4_.scaleY = this.§4!_§;
            }
            return false;
         }
         return true;
      }
      
      public function §?<§(param1:Number, param2:Number) : void
      {
         this.§]>§ = param1;
         this.§7w§ = param2;
      }
      
      override public function clone() : §!'§
      {
         var _loc1_:§+M§ = new §+M§(time,duration,this.mName,this.§#W§,this.§7F§,this.§6_§,this.§4!_§);
         _loc1_.§;1§ = this.§;1§;
         _loc1_.§]>§ = this.§]>§;
         _loc1_.§7w§ = this.§7w§;
         return _loc1_;
      }
   }
}
