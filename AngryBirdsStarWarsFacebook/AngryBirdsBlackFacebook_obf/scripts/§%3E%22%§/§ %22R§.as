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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§4#%§ = new Vector.<§@"c§>();
            while(true)
            {
               super();
               while(_loc3_ || this)
               {
                  this._name = param1;
                  loop2:
                  while(!_loc4_)
                  {
                     while(true)
                     {
                        this.§-#`§ = param2;
                        if(_loc3_ || param1)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr56);
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(this.§0!G§.length > 0)
            {
               if(_loc2_)
               {
                  return this.§0!G§[this.§0!G§.length - 1];
               }
            }
         }
         return null;
      }
      
      public function destroy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§@#7§)
            {
               if(_loc1_)
               {
                  return;
               }
               while(true)
               {
               }
               addr77:
            }
            loop1:
            while(true)
            {
               this.§-#`§.§]#&§(this.name);
               while(true)
               {
                  this.§-#`§ = null;
                  while(_loc1_ || this)
                  {
                     if(!_loc2_)
                     {
                        this.§@#7§ = true;
                        if(_loc1_)
                        {
                           return;
                           addr39:
                        }
                        continue;
                        continue;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      public function get length() : int
      {
         return this.§0!G§.length;
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§4#%§ = new Vector.<§@"c§>();
         }
         do
         {
            this.§>"F§ = true;
         }
         while(!(_loc2_ || this));
         
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4#%§.push(param1);
         }
         do
         {
            this.§>"F§ = true;
         }
         while(_loc2_ && param1);
         
      }
      
      public function §>j§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§>"F§ = false;
         }
      }
      
      public function §!"`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§>"F§ = true;
         }
      }
   }
}
