package §&!>§
{
   import §2b§.§"v§;
   
   public class §7!B§ extends §"v§
   {
       
      
      private var §^!W§:String;
      
      private var §8]§:String;
      
      private var §7!'§:Vector.<int>;
      
      public function §7!B§()
      {
         super();
         this.§7!'§ = new Vector.<int>();
      }
      
      public function get language() : String
      {
         return this.§^!W§;
      }
      
      public function set language(param1:String) : void
      {
         this.§^!W§ = param1;
      }
      
      public function get country() : String
      {
         return this.§8]§;
      }
      
      public function set country(param1:String) : void
      {
         this.§8]§ = param1;
      }
      
      public function §8!2§(param1:int) : void
      {
         if(this.§7!'§.indexOf(param1) == -1)
         {
            this.§7!'§.push(param1);
         }
      }
      
      public function §#!a§() : Vector.<int>
      {
         var _loc2_:int = 0;
         var _loc1_:Vector.<int> = new Vector.<int>();
         for each(_loc2_ in this.§7!'§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function §break§() : void
      {
         this.§7!'§ = new Vector.<int>();
      }
   }
}
