package §<!b§
{
   public class §!m§
   {
       
      
      private var §3!$§:Boolean;
      
      private var value;
      
      private var §3!G§:§;O§;
      
      private var §^!&§:§,!`§;
      
      public function §!m§(param1:String, param2:Boolean)
      {
         super();
         this.§3!$§ = param2;
         this.§3!G§ = new §;O§(param1,param2);
         this.§-&§();
         this.value = this.§,!>§();
         if(param2 && this.§-&§() != null)
         {
            this.§3!G§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §-&§() : §,!`§
      {
         return this.§^!&§ = this.§3!G§.§,!@§();
      }
      
      private function §4!Q§() : Array
      {
         var _loc1_:Array = new Array();
         this.§-&§();
         if(this.§^!&§.type == §4d§.§ !j§)
         {
            return _loc1_;
         }
         if(!this.§3!$§ && this.§^!&§.type == §4d§.§!!6§)
         {
            this.§-&§();
            if(this.§^!&§.type == §4d§.§ !j§)
            {
               return _loc1_;
            }
            this.§3!G§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§^!&§.value);
         }
         while(true)
         {
            _loc1_.push(this.§,!>§());
            this.§-&§();
            if(this.§^!&§.type == §4d§.§ !j§)
            {
               break;
            }
            if(this.§^!&§.type == §4d§.§!!6§)
            {
               this.§-&§();
               if(!this.§3!$§)
               {
                  if(this.§^!&§.type == §4d§.§ !j§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§3!G§.parseError("Expecting ] or , but found " + this.§^!&§.value);
            }
         }
         return _loc1_;
      }
      
      private function §^!O§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§-&§();
         if(this.§^!&§.type == §4d§.§&J§)
         {
            return _loc1_;
         }
         if(!this.§3!$§ && this.§^!&§.type == §4d§.§!!6§)
         {
            this.§-&§();
            if(this.§^!&§.type == §4d§.§&J§)
            {
               return _loc1_;
            }
            this.§3!G§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§^!&§.value);
         }
         while(true)
         {
            if(this.§^!&§.type == §4d§.§`!H§)
            {
               _loc2_ = String(this.§^!&§.value);
               this.§-&§();
               if(this.§^!&§.type == §4d§.§0G§)
               {
                  this.§-&§();
                  _loc1_[_loc2_] = this.§,!>§();
                  this.§-&§();
                  if(this.§^!&§.type == §4d§.§&J§)
                  {
                     break;
                  }
                  if(this.§^!&§.type == §4d§.§!!6§)
                  {
                     this.§-&§();
                     if(!this.§3!$§)
                     {
                        if(this.§^!&§.type == §4d§.§&J§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§3!G§.parseError("Expecting } or , but found " + this.§^!&§.value);
                  }
               }
               else
               {
                  this.§3!G§.parseError("Expecting : but found " + this.§^!&§.value);
               }
            }
            else
            {
               this.§3!G§.parseError("Expecting string but found " + this.§^!&§.value);
            }
         }
         return _loc1_;
      }
      
      private function §,!>§() : Object
      {
         if(this.§^!&§ == null)
         {
            this.§3!G§.parseError("Unexpected end of input");
         }
         switch(this.§^!&§.type)
         {
            case §4d§.§-h§:
               return this.§^!O§();
            case §4d§.§<5§:
               return this.§4!Q§();
            case §4d§.§`!H§:
            case §4d§.§8z§:
            case §4d§.TRUE:
            case §4d§.FALSE:
            case §4d§.NULL:
               return this.§^!&§.value;
            case §4d§.§%'§:
               if(!this.§3!$§)
               {
                  return this.§^!&§.value;
               }
               this.§3!G§.parseError("Unexpected " + this.§^!&§.value);
               break;
         }
         this.§3!G§.parseError("Unexpected " + this.§^!&§.value);
         return null;
      }
   }
}
