package §#!s§
{
   public class §<!A§
   {
       
      
      private var §8!^§:Boolean;
      
      private var value;
      
      private var §`#e§:§1"W§;
      
      private var §]$7§:§3I§;
      
      public function §<!A§(param1:String, param2:Boolean)
      {
         super();
         this.§8!^§ = param2;
         this.§`#e§ = new §1"W§(param1,param2);
         this.§!!q§();
         this.value = this.§""c§();
         if(param2 && this.§!!q§() != null)
         {
            this.§`#e§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §!!q§() : §3I§
      {
         return this.§]$7§ = this.§`#e§.§ "'§();
      }
      
      private function § #P§() : Array
      {
         var _loc1_:Array = new Array();
         this.§!!q§();
         if(this.§]$7§.type == §6#R§.§`$5§)
         {
            return _loc1_;
         }
         if(!this.§8!^§ && this.§]$7§.type == §6#R§.§]$6§)
         {
            this.§!!q§();
            if(this.§]$7§.type == §6#R§.§`$5§)
            {
               return _loc1_;
            }
            this.§`#e§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§]$7§.value);
         }
         while(true)
         {
            _loc1_.push(this.§""c§());
            this.§!!q§();
            if(this.§]$7§.type == §6#R§.§`$5§)
            {
               break;
            }
            if(this.§]$7§.type == §6#R§.§]$6§)
            {
               this.§!!q§();
               if(!this.§8!^§)
               {
                  if(this.§]$7§.type == §6#R§.§`$5§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§`#e§.parseError("Expecting ] or , but found " + this.§]$7§.value);
            }
         }
         return _loc1_;
      }
      
      private function §4"7§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§!!q§();
         if(this.§]$7§.type == §6#R§.§1!^§)
         {
            return _loc1_;
         }
         if(!this.§8!^§ && this.§]$7§.type == §6#R§.§]$6§)
         {
            this.§!!q§();
            if(this.§]$7§.type == §6#R§.§1!^§)
            {
               return _loc1_;
            }
            this.§`#e§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§]$7§.value);
         }
         while(true)
         {
            if(this.§]$7§.type == §6#R§.§0#k§)
            {
               _loc2_ = String(this.§]$7§.value);
               this.§!!q§();
               if(this.§]$7§.type == §6#R§.§=!h§)
               {
                  this.§!!q§();
                  _loc1_[_loc2_] = this.§""c§();
                  this.§!!q§();
                  if(this.§]$7§.type == §6#R§.§1!^§)
                  {
                     break;
                  }
                  if(this.§]$7§.type == §6#R§.§]$6§)
                  {
                     this.§!!q§();
                     if(!this.§8!^§)
                     {
                        if(this.§]$7§.type == §6#R§.§1!^§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§`#e§.parseError("Expecting } or , but found " + this.§]$7§.value);
                  }
               }
               else
               {
                  this.§`#e§.parseError("Expecting : but found " + this.§]$7§.value);
               }
            }
            else
            {
               this.§`#e§.parseError("Expecting string but found " + this.§]$7§.value);
            }
         }
         return _loc1_;
      }
      
      private function §""c§() : Object
      {
         if(this.§]$7§ == null)
         {
            this.§`#e§.parseError("Unexpected end of input");
         }
         switch(this.§]$7§.type)
         {
            case §6#R§.§0n§:
               return this.§4"7§();
            case §6#R§.§-!]§:
               return this.§ #P§();
            case §6#R§.§0#k§:
            case §6#R§.§7&§:
            case §6#R§.TRUE:
            case §6#R§.FALSE:
            case §6#R§.NULL:
               return this.§]$7§.value;
            case §6#R§.§[Z§:
               if(!this.§8!^§)
               {
                  return this.§]$7§.value;
               }
               this.§`#e§.parseError("Unexpected " + this.§]$7§.value);
               break;
         }
         this.§`#e§.parseError("Unexpected " + this.§]$7§.value);
         return null;
      }
   }
}
