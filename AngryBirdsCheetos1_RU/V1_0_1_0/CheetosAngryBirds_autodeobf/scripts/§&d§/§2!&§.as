package §&d§
{
   public class §2!&§
   {
       
      
      private var §60§:Boolean;
      
      private var value;
      
      private var §%u§:§=n§;
      
      private var §>x§:§4§;
      
      public function §2!&§(param1:String, param2:Boolean)
      {
         super();
         this.§60§ = param2;
         this.§%u§ = new §=n§(param1,param2);
         this.§%9§();
         this.value = this.§2h§();
         if(param2 && this.§%9§() != null)
         {
            this.§%u§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §%9§() : §4§
      {
         return this.§>x§ = this.§%u§.§9N§();
      }
      
      private function §3!S§() : Array
      {
         var _loc1_:Array = new Array();
         this.§%9§();
         if(this.§>x§.type == §94§.§?!_§)
         {
            return _loc1_;
         }
         if(!this.§60§ && this.§>x§.type == §94§.§;r§)
         {
            this.§%9§();
            if(this.§>x§.type == §94§.§?!_§)
            {
               return _loc1_;
            }
            this.§%u§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§>x§.value);
         }
         while(true)
         {
            _loc1_.push(this.§2h§());
            this.§%9§();
            if(this.§>x§.type == §94§.§?!_§)
            {
               break;
            }
            if(this.§>x§.type == §94§.§;r§)
            {
               this.§%9§();
               if(!this.§60§)
               {
                  if(this.§>x§.type == §94§.§?!_§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§%u§.parseError("Expecting ] or , but found " + this.§>x§.value);
            }
         }
         return _loc1_;
      }
      
      private function §,!A§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§%9§();
         if(this.§>x§.type == §94§.§ !H§)
         {
            return _loc1_;
         }
         if(!this.§60§ && this.§>x§.type == §94§.§;r§)
         {
            this.§%9§();
            if(this.§>x§.type == §94§.§ !H§)
            {
               return _loc1_;
            }
            this.§%u§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§>x§.value);
         }
         while(true)
         {
            if(this.§>x§.type == §94§.§==§)
            {
               _loc2_ = String(this.§>x§.value);
               this.§%9§();
               if(this.§>x§.type == §94§.§+p§)
               {
                  this.§%9§();
                  _loc1_[_loc2_] = this.§2h§();
                  this.§%9§();
                  if(this.§>x§.type == §94§.§ !H§)
                  {
                     break;
                  }
                  if(this.§>x§.type == §94§.§;r§)
                  {
                     this.§%9§();
                     if(!this.§60§)
                     {
                        if(this.§>x§.type == §94§.§ !H§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§%u§.parseError("Expecting } or , but found " + this.§>x§.value);
                  }
               }
               else
               {
                  this.§%u§.parseError("Expecting : but found " + this.§>x§.value);
               }
            }
            else
            {
               this.§%u§.parseError("Expecting string but found " + this.§>x§.value);
            }
         }
         return _loc1_;
      }
      
      private function §2h§() : Object
      {
         if(this.§>x§ == null)
         {
            this.§%u§.parseError("Unexpected end of input");
         }
         switch(this.§>x§.type)
         {
            case §94§.§>J§:
               return this.§,!A§();
            case §94§.§@b§:
               return this.§3!S§();
            case §94§.§==§:
            case §94§.§5!F§:
            case §94§.TRUE:
            case §94§.FALSE:
            case §94§.§"!M§:
               return this.§>x§.value;
            case §94§.§3g§:
               if(!this.§60§)
               {
                  return this.§>x§.value;
               }
               this.§%u§.parseError("Unexpected " + this.§>x§.value);
               break;
         }
         this.§%u§.parseError("Unexpected " + this.§>x§.value);
         return null;
      }
   }
}
