package §>"%§
{
   import §6=§.§@"c§;
   
   public class § "R§
   {
       
      
      private var §4#%§:Vector.<§@"c§>;
      
      private var _name:String;
      
      private var §>"F§:Boolean = true;
      
      private var §-#`§:§"!5§;
      
      private var §@#7§:Boolean = false;
      
      private var §@"a§:§@"c§ = null;
      
      public function § "R§(param1:String, param2:§"!5§)
      {
         this.§4#%§ = new Vector.<§@"c§>();
         super();
         this._name = param1;
         this.§-#`§ = param2;
      }
      
      public function get §0!G§() : Vector.<§@"c§>
      {
         return this.§4#%§;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get §%"v§() : §@"c§
      {
         if(this.§0!G§.length > 0)
         {
            return this.§0!G§[this.§0!G§.length - 1];
         }
         return null;
      }
      
      public function destroy() : void
      {
         if(this.§@#7§)
         {
            return;
         }
         this.§-#`§.§]#&§(this.name);
         this.§-#`§ = null;
         this.§@#7§ = true;
      }
      
      public function get length() : int
      {
         return this.§0!G§.length;
      }
      
      public function clear() : void
      {
         this.§4#%§ = new Vector.<§@"c§>();
         this.§>"F§ = true;
      }
      
      public function get §>t§() : Boolean
      {
         return this.§>"F§;
      }
      
      public function get §8a§() : §"!5§
      {
         return this.§-#`§;
      }
      
      public function §8!"§(param1:§@"c§) : void
      {
         this.§4#%§.push(param1);
         this.§>"F§ = true;
      }
      
      public function §>j§() : void
      {
         this.§>"F§ = false;
      }
      
      public function §!"`§() : void
      {
         this.§>"F§ = true;
      }
   }
}
