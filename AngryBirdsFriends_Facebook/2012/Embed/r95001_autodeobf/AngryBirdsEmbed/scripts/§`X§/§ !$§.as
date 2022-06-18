package §`X§
{
   import §9H§.§@M§;
   
   public class § !$§
   {
       
      
      private var §97§:String;
      
      private var §8!4§:Vector.<Function>;
      
      private var §[!#§:Boolean;
      
      public function § !$§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§97§ = param1;
         this.§[!#§ = param3;
         if(param2 != null)
         {
            §@M§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §?G§() : String
      {
         return this.§97§;
      }
      
      public function §"!3§(param1:Boolean) : void
      {
         this.§[!#§ = param1;
      }
      
      public function §6!6§() : Boolean
      {
         return this.§[!#§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§8!4§ == null)
         {
            this.§8!4§ = new Vector.<Function>();
         }
         if(this.§8!4§.indexOf(param1) == -1)
         {
            this.§8!4§.push(param1);
         }
      }
      
      public function §2v§(param1:Function) : void
      {
         if(this.§8!4§.indexOf(param1) > -1)
         {
            this.§8!4§.splice(this.§8!4§.indexOf(param1),1);
         }
      }
      
      public function §5]§() : Vector.<Function>
      {
         return this.§8!4§;
      }
   }
}
