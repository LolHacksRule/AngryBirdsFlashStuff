package §5!"§
{
   public class §%x§
   {
       
      
      private var §+y§:Boolean;
      
      private var value;
      
      private var §[V§:§-p§;
      
      private var §8!?§:§,!5§;
      
      public function §%x§(param1:String, param2:Boolean)
      {
         super();
         this.§+y§ = param2;
         this.§[V§ = new §-p§(param1,param2);
         this.§,9§();
         this.value = this.§#!B§();
         if(param2 && this.§,9§() != null)
         {
            this.§[V§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §,9§() : §,!5§
      {
         return this.§8!?§ = this.§[V§.§9!b§();
      }
      
      private function §30§() : Array
      {
         var _loc1_:Array = new Array();
         this.§,9§();
         if(this.§8!?§.type == §>N§.§@[§)
         {
            return _loc1_;
         }
         if(!this.§+y§ && this.§8!?§.type == §>N§.§1l§)
         {
            this.§,9§();
            if(this.§8!?§.type == §>N§.§@[§)
            {
               return _loc1_;
            }
            this.§[V§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§8!?§.value);
         }
         while(true)
         {
            _loc1_.push(this.§#!B§());
            this.§,9§();
            if(this.§8!?§.type == §>N§.§@[§)
            {
               break;
            }
            if(this.§8!?§.type == §>N§.§1l§)
            {
               this.§,9§();
               if(!this.§+y§)
               {
                  if(this.§8!?§.type == §>N§.§@[§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§[V§.parseError("Expecting ] or , but found " + this.§8!?§.value);
            }
         }
         return _loc1_;
      }
      
      private function §-A§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§,9§();
         if(this.§8!?§.type == §>N§.§`[§)
         {
            return _loc1_;
         }
         if(!this.§+y§ && this.§8!?§.type == §>N§.§1l§)
         {
            this.§,9§();
            if(this.§8!?§.type == §>N§.§`[§)
            {
               return _loc1_;
            }
            this.§[V§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§8!?§.value);
         }
         while(true)
         {
            if(this.§8!?§.type == §>N§.§^![§)
            {
               _loc2_ = String(this.§8!?§.value);
               this.§,9§();
               if(this.§8!?§.type == §>N§.§0!+§)
               {
                  this.§,9§();
                  _loc1_[_loc2_] = this.§#!B§();
                  this.§,9§();
                  if(this.§8!?§.type == §>N§.§`[§)
                  {
                     break;
                  }
                  if(this.§8!?§.type == §>N§.§1l§)
                  {
                     this.§,9§();
                     if(!this.§+y§)
                     {
                        if(this.§8!?§.type == §>N§.§`[§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§[V§.parseError("Expecting } or , but found " + this.§8!?§.value);
                  }
               }
               else
               {
                  this.§[V§.parseError("Expecting : but found " + this.§8!?§.value);
               }
            }
            else
            {
               this.§[V§.parseError("Expecting string but found " + this.§8!?§.value);
            }
         }
         return _loc1_;
      }
      
      private function §#!B§() : Object
      {
         if(this.§8!?§ == null)
         {
            this.§[V§.parseError("Unexpected end of input");
         }
         switch(this.§8!?§.type)
         {
            case §>N§.§5!2§:
               return this.§-A§();
            case §>N§.§4!T§:
               return this.§30§();
            case §>N§.§^![§:
            case §>N§.§do§:
            case §>N§.TRUE:
            case §>N§.FALSE:
            case §>N§.§9!5§:
               return this.§8!?§.value;
            case §>N§.§!$§:
               if(!this.§+y§)
               {
                  return this.§8!?§.value;
               }
               this.§[V§.parseError("Unexpected " + this.§8!?§.value);
               break;
         }
         this.§[V§.parseError("Unexpected " + this.§8!?§.value);
         return null;
      }
   }
}
