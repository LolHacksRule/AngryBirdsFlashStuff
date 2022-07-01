package §"q§
{
   import §,!C§.§2$§;
   
   public class §2!L§ extends §2$§
   {
       
      
      private var §7>§:String;
      
      private var §"!v§:String;
      
      private var §;o§:Vector.<int>;
      
      public function §2!L§()
      {
         super();
         this.§;o§ = new Vector.<int>();
      }
      
      public function get language() : String
      {
         return this.§7>§;
      }
      
      public function set language(param1:String) : void
      {
         this.§7>§ = param1;
      }
      
      public function get country() : String
      {
         return this.§"!v§;
      }
      
      public function set country(param1:String) : void
      {
         this.§"!v§ = param1;
      }
      
      public function §["&§(param1:int) : void
      {
         if(this.§;o§.indexOf(param1) == -1)
         {
            this.§;o§.push(param1);
         }
      }
      
      public function §5"!§() : Vector.<int>
      {
         var _loc2_:int = 0;
         var _loc1_:Vector.<int> = new Vector.<int>();
         for each(_loc2_ in this.§;o§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function §1!x§() : void
      {
         this.§;o§ = new Vector.<int>();
      }
   }
}
