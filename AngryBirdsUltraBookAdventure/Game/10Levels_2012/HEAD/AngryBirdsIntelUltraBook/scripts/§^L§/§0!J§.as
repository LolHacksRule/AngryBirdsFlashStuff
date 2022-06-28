package §^L§
{
   import §'_§.Texture;
   import §-!>§.§4!T§;
   import §9!!§.Integer;
   import §?A§.LevelMain;
   
   public class §0!J§
   {
      
      public static const §5!+§:int = 0;
      
      public static const §8!j§:int = 6;
      
      public static const §2!0§:int = 7;
      
      public static const §!!-§:int = 8;
      
      public static const § K§:int = 3;
      
      public static const §&!2§:int = 5;
      
      public static const § !Z§:int = 2;
      
      public static const §<!S§:int = 1;
       
      
      public var §4!W§:String;
      
      public var §4i§:int;
      
      protected var §&Q§:Integer;
      
      public var §`§:Number;
      
      public var §`5§:String;
      
      public var §!!T§:Number = 1;
      
      public var §^V§:Number;
      
      private var §'!T§:Boolean = false;
      
      private var §8@§:String;
      
      private var §6!E§:int;
      
      private var §>!V§:LevelItemShape;
      
      private var §^;§:LevelItemMaterial;
      
      private var §@C§:LevelItemSoundResource;
      
      public function §0!J§(param1:String, param2:int, param3:LevelItemMaterial, param4:LevelItemSoundResource, param5:LevelItemShape, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§4!W§ = param1;
         this.§4i§ = param2;
         this.§^;§ = param3;
         this.§8@§ = param12;
         this.§6!E§ = param13;
         this.§'!T§ = param11;
         this.§@C§ = param4;
         this.§>!V§ = param5;
         this.§&Q§ = new Integer(param6);
         this.§`5§ = param7;
         this.§!!T§ = param8;
         if(this.§!!T§ <= 0)
         {
            this.§!!T§ = 1;
         }
         this.§^V§ = param9;
         this.§`§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§'!T§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§8@§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§6!E§;
      }
      
      public function § V§() : int
      {
         return this.shape.§'!,§();
      }
      
      public function §@!#§() : int
      {
         return this.shape.§=!a§();
      }
      
      public function §>!4§() : int
      {
         return this.shape.§6w§();
      }
      
      public function §%!W§() : Number
      {
         return this.§^;§.getValue(LevelItemMaterial.§"!@§);
      }
      
      public function §>!h§() : Number
      {
         return Number(this.§^;§.getValue(LevelItemMaterial.§?!3§));
      }
      
      public function §=;§() : Number
      {
         return Number(this.§^;§.getValue(LevelItemMaterial.§4!_§));
      }
      
      public function §9!4§() : Number
      {
         return Number(this.§^;§.getValue(LevelItemMaterial.§73§));
      }
      
      public function §]6§() : Number
      {
         return Number(this.§^;§.getValue(LevelItemMaterial.§?!A§));
      }
      
      public function §"f§() : Number
      {
         return Number(this.§^;§.getValue(LevelItemMaterial.§=!e§));
      }
      
      public function §=!V§() : Number
      {
         return Number(this.§^;§.getValue(LevelItemMaterial.§9!j§));
      }
      
      public function final() : int
      {
         return this.§`§;
      }
      
      public function get material() : LevelItemMaterial
      {
         return this.§^;§;
      }
      
      public function get shape() : LevelItemShape
      {
         var _loc1_:Texture = null;
         if(!this.§>!V§)
         {
            _loc1_ = §4!T§.§1t§.animationManager.getAnimation(this.§4!W§).getFrame(0).texture;
            this.§>!V§ = new LevelItemShape(this.§4!W§,"Rectangle",_loc1_.width * LevelMain.§!5§ / 2,_loc1_.height * LevelMain.§!5§ / 2);
         }
         return this.§>!V§;
      }
      
      public function get §3!,§() : LevelItemSoundResource
      {
         return this.§@C§;
      }
      
      public function get score() : int
      {
         return this.§&Q§.getValue();
      }
   }
}
