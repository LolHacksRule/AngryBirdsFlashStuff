package §!"§
{
   import §8!g§.§^L§;
   
   public class §0"6§ extends §^L§
   {
       
      
      private var §^!p§:String;
      
      private var §7Q§:String;
      
      private var §0!f§:Vector.<int>;
      
      public function §0"6§()
      {
         super();
         this.§0!f§ = new Vector.<int>();
      }
      
      public function get language() : String
      {
         return this.§^!p§;
      }
      
      public function set language(param1:String) : void
      {
         this.§^!p§ = param1;
      }
      
      public function get country() : String
      {
         return this.§7Q§;
      }
      
      public function set country(param1:String) : void
      {
         this.§7Q§ = param1;
      }
      
      public function §]"5§(param1:int) : void
      {
         if(this.§0!f§.indexOf(param1) == -1)
         {
            this.§0!f§.push(param1);
         }
      }
      
      public function §%!9§() : Vector.<int>
      {
         var _loc2_:int = 0;
         var _loc1_:Vector.<int> = new Vector.<int>();
         for each(_loc2_ in this.§0!f§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function §;!o§() : void
      {
         this.§0!f§ = new Vector.<int>();
      }
   }
}
