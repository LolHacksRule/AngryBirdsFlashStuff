package §'" §
{
   public class §37§
   {
       
      
      private var §'"_§:Boolean;
      
      private var value;
      
      private var §@#2§:§@!R§;
      
      private var §9^§:§=!P§;
      
      public function §37§(param1:String, param2:Boolean)
      {
         super();
         this.§'"_§ = param2;
         this.§@#2§ = new §@!R§(param1,param2);
         this.§ "k§();
         this.value = this.§&"T§();
         if(param2 && this.§ "k§() != null)
         {
            this.§@#2§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function § "k§() : §=!P§
      {
         return this.§9^§ = this.§@#2§.§[!p§();
      }
      
      private function §@![§() : Array
      {
         var _loc1_:Array = new Array();
         this.§ "k§();
         if(this.§9^§.type == § "@§.§["@§)
         {
            return _loc1_;
         }
         if(!this.§'"_§ && this.§9^§.type == § "@§.§0""§)
         {
            this.§ "k§();
            if(this.§9^§.type == § "@§.§["@§)
            {
               return _loc1_;
            }
            this.§@#2§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§9^§.value);
         }
         while(true)
         {
            _loc1_.push(this.§&"T§());
            this.§ "k§();
            if(this.§9^§.type == § "@§.§["@§)
            {
               break;
            }
            if(this.§9^§.type == § "@§.§0""§)
            {
               this.§ "k§();
               if(!this.§'"_§)
               {
                  if(this.§9^§.type == § "@§.§["@§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§@#2§.parseError("Expecting ] or , but found " + this.§9^§.value);
            }
         }
         return _loc1_;
      }
      
      private function §7!C§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§ "k§();
         if(this.§9^§.type == § "@§.§;!Q§)
         {
            return _loc1_;
         }
         if(!this.§'"_§ && this.§9^§.type == § "@§.§0""§)
         {
            this.§ "k§();
            if(this.§9^§.type == § "@§.§;!Q§)
            {
               return _loc1_;
            }
            this.§@#2§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§9^§.value);
         }
         while(true)
         {
            if(this.§9^§.type == § "@§.§-! §)
            {
               _loc2_ = String(this.§9^§.value);
               this.§ "k§();
               if(this.§9^§.type == § "@§.§ !T§)
               {
                  this.§ "k§();
                  _loc1_[_loc2_] = this.§&"T§();
                  this.§ "k§();
                  if(this.§9^§.type == § "@§.§;!Q§)
                  {
                     break;
                  }
                  if(this.§9^§.type == § "@§.§0""§)
                  {
                     this.§ "k§();
                     if(!this.§'"_§)
                     {
                        if(this.§9^§.type == § "@§.§;!Q§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§@#2§.parseError("Expecting } or , but found " + this.§9^§.value);
                  }
               }
               else
               {
                  this.§@#2§.parseError("Expecting : but found " + this.§9^§.value);
               }
            }
            else
            {
               this.§@#2§.parseError("Expecting string but found " + this.§9^§.value);
            }
         }
         return _loc1_;
      }
      
      private function §&"T§() : Object
      {
         if(this.§9^§ == null)
         {
            this.§@#2§.parseError("Unexpected end of input");
         }
         switch(this.§9^§.type)
         {
            case § "@§.§[!§:
               return this.§7!C§();
            case § "@§.§>"q§:
               return this.§@![§();
            case § "@§.§-! §:
            case § "@§.§#"H§:
            case § "@§.TRUE:
            case § "@§.FALSE:
            case § "@§.NULL:
               return this.§9^§.value;
            case § "@§.§4!p§:
               if(!this.§'"_§)
               {
                  return this.§9^§.value;
               }
               this.§@#2§.parseError("Unexpected " + this.§9^§.value);
               break;
         }
         this.§@#2§.parseError("Unexpected " + this.§9^§.value);
         return null;
      }
   }
}
