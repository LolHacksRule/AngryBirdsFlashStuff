package § ^§
{
   import §@!a§.§'!b§;
   
   public class §[C§ extends §'!b§
   {
       
      
      private var §-m§:String;
      
      private var §'Q§:String;
      
      private var §-i§:Vector.<int>;
      
      public function §[C§()
      {
         super();
         this.§-i§ = new Vector.<int>();
      }
      
      public function get language() : String
      {
         return this.§-m§;
      }
      
      public function set language(param1:String) : void
      {
         this.§-m§ = param1;
      }
      
      public function get §>M§() : String
      {
         return this.§'Q§;
      }
      
      public function set §>M§(param1:String) : void
      {
         this.§'Q§ = param1;
      }
      
      public function §^!+§(param1:int) : void
      {
         if(this.§-i§.indexOf(param1) == -1)
         {
            this.§-i§.push(param1);
         }
      }
      
      public function §9A§() : Vector.<int>
      {
         var _loc2_:int = 0;
         var _loc1_:Vector.<int> = new Vector.<int>();
         for each(_loc2_ in this.§-i§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function §3D§() : void
      {
         this.§-i§ = new Vector.<int>();
      }
   }
}
