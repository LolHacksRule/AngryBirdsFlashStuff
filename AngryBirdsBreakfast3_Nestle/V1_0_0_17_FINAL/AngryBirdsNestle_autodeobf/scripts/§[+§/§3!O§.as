package §[+§
{
   public class §3!O§
   {
       
      
      private var §?0§:String;
      
      private var mName:String;
      
      private var §]I§:String;
      
      private var §;%§:String;
      
      private var §@j§:String;
      
      private var §3A§:Vector.<§"!u§>;
      
      public function §3!O§()
      {
         super();
         this.§3A§ = new Vector.<§"!u§>();
      }
      
      public function § 6§(param1:§"!u§) : void
      {
         this.§3A§.push(param1);
      }
      
      public function §,!$§() : Array
      {
         var _loc2_:§"!u§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§3A§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get nativeName() : String
      {
         return this.§]I§;
      }
      
      public function set nativeName(param1:String) : void
      {
         this.§]I§ = param1;
      }
      
      public function get alphabeticName() : String
      {
         return this.§;%§;
      }
      
      public function set alphabeticName(param1:String) : void
      {
         this.§;%§ = param1;
      }
      
      public function get id() : String
      {
         return this.§?0§;
      }
      
      public function set id(param1:String) : void
      {
         this.§?0§ = param1;
      }
      
      public function set brand(param1:String) : void
      {
         this.§@j§ = param1;
      }
      
      public function get brand() : String
      {
         return this.§@j§;
      }
   }
}
