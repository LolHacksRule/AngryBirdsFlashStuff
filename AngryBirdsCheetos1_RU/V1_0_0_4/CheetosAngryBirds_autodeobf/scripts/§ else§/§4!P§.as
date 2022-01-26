package § else§
{
   public class §4!P§
   {
       
      
      private var §?!7§:Boolean;
      
      private var value;
      
      private var §!!R§:§7c§;
      
      private var §7s§:§"U§;
      
      public function §4!P§(param1:String, param2:Boolean)
      {
         super();
         this.§?!7§ = param2;
         this.§!!R§ = new §7c§(param1,param2);
         this.§#k§();
         this.value = this.§&!3§();
         if(param2 && this.§#k§() != null)
         {
            this.§!!R§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §#k§() : §"U§
      {
         return this.§7s§ = this.§!!R§.§>!>§();
      }
      
      private function §%!U§() : Array
      {
         var _loc1_:Array = new Array();
         this.§#k§();
         if(this.§7s§.type == §`!1§.§2&§)
         {
            return _loc1_;
         }
         if(!this.§?!7§ && this.§7s§.type == §`!1§.§7!Q§)
         {
            this.§#k§();
            if(this.§7s§.type == §`!1§.§2&§)
            {
               return _loc1_;
            }
            this.§!!R§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§7s§.value);
         }
         while(true)
         {
            _loc1_.push(this.§&!3§());
            this.§#k§();
            if(this.§7s§.type == §`!1§.§2&§)
            {
               break;
            }
            if(this.§7s§.type == §`!1§.§7!Q§)
            {
               this.§#k§();
               if(!this.§?!7§)
               {
                  if(this.§7s§.type == §`!1§.§2&§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§!!R§.parseError("Expecting ] or , but found " + this.§7s§.value);
            }
         }
         return _loc1_;
      }
      
      private function §;!W§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§#k§();
         if(this.§7s§.type == §`!1§.§2d§)
         {
            return _loc1_;
         }
         if(!this.§?!7§ && this.§7s§.type == §`!1§.§7!Q§)
         {
            this.§#k§();
            if(this.§7s§.type == §`!1§.§2d§)
            {
               return _loc1_;
            }
            this.§!!R§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§7s§.value);
         }
         while(true)
         {
            if(this.§7s§.type == §`!1§.§<E§)
            {
               _loc2_ = String(this.§7s§.value);
               this.§#k§();
               if(this.§7s§.type == §`!1§.§"§)
               {
                  this.§#k§();
                  _loc1_[_loc2_] = this.§&!3§();
                  this.§#k§();
                  if(this.§7s§.type == §`!1§.§2d§)
                  {
                     break;
                  }
                  if(this.§7s§.type == §`!1§.§7!Q§)
                  {
                     this.§#k§();
                     if(!this.§?!7§)
                     {
                        if(this.§7s§.type == §`!1§.§2d§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§!!R§.parseError("Expecting } or , but found " + this.§7s§.value);
                  }
               }
               else
               {
                  this.§!!R§.parseError("Expecting : but found " + this.§7s§.value);
               }
            }
            else
            {
               this.§!!R§.parseError("Expecting string but found " + this.§7s§.value);
            }
         }
         return _loc1_;
      }
      
      private function §&!3§() : Object
      {
         if(this.§7s§ == null)
         {
            this.§!!R§.parseError("Unexpected end of input");
         }
         switch(this.§7s§.type)
         {
            case §`!1§.§]U§:
               return this.§;!W§();
            case §`!1§.§`9§:
               return this.§%!U§();
            case §`!1§.§<E§:
            case §`!1§.§]!<§:
            case §`!1§.TRUE:
            case §`!1§.FALSE:
            case §`!1§.§3Q§:
               return this.§7s§.value;
            case §`!1§.§7<§:
               if(!this.§?!7§)
               {
                  return this.§7s§.value;
               }
               this.§!!R§.parseError("Unexpected " + this.§7s§.value);
               break;
         }
         this.§!!R§.parseError("Unexpected " + this.§7s§.value);
         return null;
      }
   }
}
