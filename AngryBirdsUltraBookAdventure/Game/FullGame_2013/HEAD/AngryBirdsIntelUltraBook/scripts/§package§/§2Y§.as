package §package§
{
   import §5=§.Integer;
   import §6!J§.Texture;
   import §?!Y§.§`S§;
   import §]!@§.LevelMain;
   
   public class §2Y§
   {
      
      public static const §?Y§:int = 0;
      
      public static const §6!c§:int = 6;
      
      public static const §5!a§:int = 7;
      
      public static const §3F§:int = 8;
      
      public static const §9!0§:int = 3;
      
      public static const §<%§:int = 5;
      
      public static const §?N§:int = 2;
      
      public static const §-Z§:int = 1;
       
      
      public var § I§:String;
      
      public var §4o§:int;
      
      protected var §<T§:Integer;
      
      public var §0!+§:Number;
      
      public var §[L§:String;
      
      public var §[!4§:Number = 1;
      
      public var §>!"§:Number;
      
      private var §9z§:Boolean = false;
      
      private var §@J§:String;
      
      private var §#c§:int;
      
      private var §&! §:LevelItemShape;
      
      private var §4!!§:LevelItemMaterial;
      
      private var §8!4§:LevelItemSoundResource;
      
      public function §2Y§(param1:String, param2:int, param3:LevelItemMaterial, param4:LevelItemSoundResource, param5:LevelItemShape, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§ I§ = param1;
         this.§4o§ = param2;
         this.§4!!§ = param3;
         this.§@J§ = param12;
         this.§#c§ = param13;
         this.§9z§ = param11;
         this.§8!4§ = param4;
         this.§&! § = param5;
         this.§<T§ = new Integer(param6);
         this.§[L§ = param7;
         this.§[!4§ = param8;
         if(this.§[!4§ <= 0)
         {
            this.§[!4§ = 1;
         }
         this.§>!"§ = param9;
         this.§0!+§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§9z§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§@J§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§#c§;
      }
      
      public function §5t§() : int
      {
         return this.shape.§1]§();
      }
      
      public function §2V§() : int
      {
         return this.shape.§,?§();
      }
      
      public function §7!B§() : int
      {
         return this.shape.§<!g§();
      }
      
      public function §<^§() : Number
      {
         return this.§4!!§.getValue(LevelItemMaterial.§+v§);
      }
      
      public function §#B§() : Number
      {
         return Number(this.§4!!§.getValue(LevelItemMaterial.§+o§));
      }
      
      public function §2[§() : Number
      {
         return Number(this.§4!!§.getValue(LevelItemMaterial.§"W§));
      }
      
      public function §`! §() : Number
      {
         return Number(this.§4!!§.getValue(LevelItemMaterial.§]!3§));
      }
      
      public function §%_§() : Number
      {
         return Number(this.§4!!§.getValue(LevelItemMaterial.§@L§));
      }
      
      public function §<!<§() : Number
      {
         return Number(this.§4!!§.getValue(LevelItemMaterial.§'!A§));
      }
      
      public function §1G§() : Number
      {
         return Number(this.§4!!§.getValue(LevelItemMaterial.§4^§));
      }
      
      public function §1!7§() : int
      {
         return this.§0!+§;
      }
      
      public function get material() : LevelItemMaterial
      {
         return this.§4!!§;
      }
      
      public function get shape() : LevelItemShape
      {
         var _loc1_:Texture = null;
         if(!this.§&! §)
         {
            _loc1_ = §`S§.§[o§.animationManager.getAnimation(this.§ I§).getFrame(0).texture;
            this.§&! § = new LevelItemShape(this.§ I§,"Rectangle",_loc1_.width * LevelMain.§@!d§ / 2,_loc1_.height * LevelMain.§@!d§ / 2);
         }
         return this.§&! §;
      }
      
      public function get §%!K§() : LevelItemSoundResource
      {
         return this.§8!4§;
      }
      
      public function get score() : int
      {
         return this.§<T§.getValue();
      }
   }
}
