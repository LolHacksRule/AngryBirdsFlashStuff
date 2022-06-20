package §0t§
{
   public class §`!E§
   {
       
      
      protected var §7g§:§9c§;
      
      protected var §^"7§:Object;
      
      protected var §&!M§:String;
      
      protected var §<!$§:String;
      
      protected var §&!w§:String;
      
      public function §`!E§(param1:String, param2:String, param3:String)
      {
         this.§^"7§ = {};
         super();
         this.§&!w§ = param3;
         this.§<!$§ = param2;
         this.§&!M§ = param1;
      }
      
      public function §5!t§() : §9c§
      {
         if(!this.§7g§)
         {
            this.§7g§ = new §9c§(this.§<!$§,this.§&!w§,this.§&!M§ + "/fb/friends",true);
         }
         return this.§7g§;
      }
      
      public function injectData(param1:Object) : void
      {
         this.§7g§ = new §9c§(this.§<!$§,this.§&!w§,this.§&!M§ + "/fb/friends",true,param1);
      }
      
      public function §1!c§(param1:String, param2:String, param3:Boolean = false) : §9c§
      {
         if(this.§^"7§[param2])
         {
            return this.§^"7§[param2];
         }
         return this.§^"7§[param2] = new §9c§(this.§<!$§,this.§&!w§,this.§&!M§ + "/getlevelscores/" + param1 + "/" + param2 + "/" + param3.toString(),false);
      }
      
      public function §7!G§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§^"7§[_loc2_])
            {
               this.§^"7§[_loc2_] = null;
            }
         }
      }
      
      public function §!!D§(param1:String) : §9c§
      {
         return this.§^"7§[param1];
      }
      
      public function get §^f§() : int
      {
         if(this.§7g§ == null)
         {
            return -1;
         }
         return this.§7g§.§^f§;
      }
   }
}
