package §+k§
{
   public class §^x§
   {
       
      
      protected var §#L§:§>t§;
      
      protected var §0!!§:Object;
      
      protected var §0'§:String;
      
      protected var §7D§:String;
      
      protected var §]!6§:String;
      
      public function §^x§(param1:String, param2:String, param3:String)
      {
         this.§0!!§ = {};
         super();
         this.§]!6§ = param3;
         this.§7D§ = param2;
         this.§0'§ = param1;
      }
      
      public function §^"§() : §>t§
      {
         if(!this.§#L§)
         {
            this.§#L§ = new §>t§(this.§7D§,this.§]!6§,this.§0'§ + "/fb/friends",true);
         }
         return this.§#L§;
      }
      
      public function §&?§(param1:Object) : void
      {
         this.§#L§ = new §>t§(this.§7D§,this.§]!6§,this.§0'§ + "/fb/friends",true,param1);
      }
      
      public function §"I§(param1:String, param2:String, param3:Boolean = false) : §>t§
      {
         if(this.§0!!§[param2])
         {
            return this.§0!!§[param2];
         }
         return this.§0!!§[param2] = new §>t§(this.§7D§,this.§]!6§,this.§0'§ + "/getlevelscores/" + param1 + "/" + param2 + "/" + param3.toString(),false);
      }
      
      public function §@!@§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§0!!§[_loc2_])
            {
               this.§0!!§[_loc2_] = null;
            }
         }
      }
      
      public function §9!v§(param1:String) : §>t§
      {
         return this.§0!!§[param1];
      }
      
      public function get §&1§() : int
      {
         if(this.§#L§ == null)
         {
            return -1;
         }
         return this.§#L§.§&1§;
      }
   }
}
