package §!T§
{
   import §-'§.§%!$§;
   import §10§.§#!4§;
   import §9!?§.§^]§;
   import §<-§.Texture;
   
   public class §9n§
   {
      
      public static const §9?§:int = 0;
      
      public static const §@!8§:int = 6;
      
      public static const §>!7§:int = 7;
      
      public static const §7L§:int = 8;
      
      public static const §[P§:int = 3;
      
      public static const §<d§:int = 5;
      
      public static const §`!&§:int = 2;
      
      public static const §return§:int = 1;
       
      
      public var §"]§:String;
      
      public var §8V§:int;
      
      protected var §6r§:§%!$§;
      
      public var §2j§:Number;
      
      public var §?f§:String;
      
      public var §?@§:Number = 1;
      
      public var §'R§:Number;
      
      private var §3!!§:Boolean = false;
      
      private var §]!3§:§'2§;
      
      private var §'[§:§^^§;
      
      private var §%!E§:§`P§;
      
      public function §9n§(param1:String, param2:int, param3:§^^§, param4:§`P§, param5:§'2§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super();
         this.§"]§ = param1;
         this.§8V§ = param2;
         this.§'[§ = param3;
         this.§3!!§ = param11;
         this.§%!E§ = param4;
         this.§]!3§ = param5;
         this.§6r§ = new §%!$§(param6);
         this.§?f§ = param7;
         this.§?@§ = param8;
         if(this.§?@§ <= 0)
         {
            this.§?@§ = 1;
         }
         this.§'R§ = param9;
         this.§2j§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§3!!§;
      }
      
      public function §&!F§() : int
      {
         return this.shape.§7b§();
      }
      
      public function §7]§() : int
      {
         return this.shape.§;K§();
      }
      
      public function §"o§() : int
      {
         return this.shape.§=^§();
      }
      
      public function §+%§() : Number
      {
         return this.§'[§.getValue(§^^§.§]q§);
      }
      
      public function §%e§() : Number
      {
         return Number(this.§'[§.getValue(§^^§.§<!A§));
      }
      
      public function §<Q§() : Number
      {
         return Number(this.§'[§.getValue(§^^§.§?!%§));
      }
      
      public function §@6§() : Number
      {
         return Number(this.§'[§.getValue(§^^§.§6,§));
      }
      
      public function §6T§() : Number
      {
         return Number(this.§'[§.getValue(§^^§.§-m§));
      }
      
      public function §;V§() : Number
      {
         return Number(this.§'[§.getValue(§^^§.§2l§));
      }
      
      public function §`<§() : Number
      {
         return Number(this.§'[§.getValue(§^^§.§,T§));
      }
      
      public function §0P§() : int
      {
         return this.§2j§;
      }
      
      public function get material() : §^^§
      {
         return this.§'[§;
      }
      
      public function get shape() : §'2§
      {
         var _loc1_:Texture = null;
         if(!this.§]!3§)
         {
            _loc1_ = §#!4§.§^Y§.§[y§.§ E§(this.§"]§).getFrame(0).texture;
            this.§]!3§ = new §'2§(this.§"]§,"Rectangle",_loc1_.width * §^]§.§ u§ / 2,_loc1_.height * §^]§.§ u§ / 2);
         }
         return this.§]!3§;
      }
      
      public function get §8"§() : §`P§
      {
         return this.§%!E§;
      }
      
      public function get score() : int
      {
         return this.§6r§.getValue();
      }
   }
}
