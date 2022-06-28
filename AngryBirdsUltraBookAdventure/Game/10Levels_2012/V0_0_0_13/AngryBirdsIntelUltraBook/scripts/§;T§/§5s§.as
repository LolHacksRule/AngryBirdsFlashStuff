package §;T§
{
   import § D§.§]!B§;
   import §2!H§.LevelMain;
   import §7i§.Texture;
   import §7p§.Integer;
   
   public class §5s§
   {
      
      public static const §#z§:int = 0;
      
      public static const §-"§:int = 6;
      
      public static const §2!I§:int = 7;
      
      public static const §3!h§:int = 8;
      
      public static const §"!W§:int = 3;
      
      public static const §4!T§:int = 5;
      
      public static const §'!W§:int = 2;
      
      public static const §`!J§:int = 1;
       
      
      public var §#>§:String;
      
      public var §17§:int;
      
      protected var §while§:Integer;
      
      public var §9Y§:Number;
      
      public var §-!@§:String;
      
      public var §9§:Number = 1;
      
      public var §]!3§:Number;
      
      private var §]G§:Boolean = false;
      
      private var §!!<§:String;
      
      private var §0!§:int;
      
      private var §"!5§:LevelItemShape;
      
      private var §69§:LevelItemMaterial;
      
      private var §'!i§:LevelItemSoundResource;
      
      public function §5s§(param1:String, param2:int, param3:LevelItemMaterial, param4:LevelItemSoundResource, param5:LevelItemShape, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§#>§ = param1;
         this.§17§ = param2;
         this.§69§ = param3;
         this.§!!<§ = param12;
         this.§0!§ = param13;
         this.§]G§ = param11;
         this.§'!i§ = param4;
         this.§"!5§ = param5;
         this.§while§ = new Integer(param6);
         this.§-!@§ = param7;
         this.§9§ = param8;
         if(this.§9§ <= 0)
         {
            this.§9§ = 1;
         }
         this.§]!3§ = param9;
         this.§9Y§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§]G§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§!!<§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§0!§;
      }
      
      public function §]b§() : int
      {
         return this.shape.§^c§();
      }
      
      public function §"?§() : int
      {
         return this.shape.§%!?§();
      }
      
      public function §'i§() : int
      {
         return this.shape.§==§();
      }
      
      public function §'_§() : Number
      {
         return this.§69§.getValue(LevelItemMaterial.§<[§);
      }
      
      public function §>t§() : Number
      {
         return Number(this.§69§.getValue(LevelItemMaterial.§&y§));
      }
      
      public function §<!I§() : Number
      {
         return Number(this.§69§.getValue(LevelItemMaterial.§@F§));
      }
      
      public function §+^§() : Number
      {
         return Number(this.§69§.getValue(LevelItemMaterial.§0y§));
      }
      
      public function §!!b§() : Number
      {
         return Number(this.§69§.getValue(LevelItemMaterial.§=O§));
      }
      
      public function §7c§() : Number
      {
         return Number(this.§69§.getValue(LevelItemMaterial.§+a§));
      }
      
      public function §[!S§() : Number
      {
         return Number(this.§69§.getValue(LevelItemMaterial.§,j§));
      }
      
      public function §[f§() : int
      {
         return this.§9Y§;
      }
      
      public function get material() : LevelItemMaterial
      {
         return this.§69§;
      }
      
      public function get shape() : LevelItemShape
      {
         var _loc1_:Texture = null;
         if(!this.§"!5§)
         {
            _loc1_ = §]!B§.§>F§.animationManager.getAnimation(this.§#>§).getFrame(0).texture;
            this.§"!5§ = new LevelItemShape(this.§#>§,"Rectangle",_loc1_.width * LevelMain.§8N§ / 2,_loc1_.height * LevelMain.§8N§ / 2);
         }
         return this.§"!5§;
      }
      
      public function get §,!9§() : LevelItemSoundResource
      {
         return this.§'!i§;
      }
      
      public function get score() : int
      {
         return this.§while§.getValue();
      }
   }
}
