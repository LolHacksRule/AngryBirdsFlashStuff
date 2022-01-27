package §5!8§
{
   public class §extends§
   {
       
      
      private var §%Y§:Boolean;
      
      private var value;
      
      private var §?!'§:§;"o§;
      
      private var §6a§:§=!3§;
      
      public function §extends§(param1:String, param2:Boolean)
      {
         super();
         this.§%Y§ = param2;
         this.§?!'§ = new §;"o§(param1,param2);
         this.§,"s§();
         this.value = this.§?+§();
         if(param2 && this.§,"s§() != null)
         {
            this.§?!'§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §,"s§() : §=!3§
      {
         return this.§6a§ = this.§?!'§.§<"$§();
      }
      
      private function §4v§() : Array
      {
         var _loc1_:Array = new Array();
         this.§,"s§();
         if(this.§6a§.type == §`" §.§!#5§)
         {
            return _loc1_;
         }
         if(!this.§%Y§ && this.§6a§.type == §`" §.§>"E§)
         {
            this.§,"s§();
            if(this.§6a§.type == §`" §.§!#5§)
            {
               return _loc1_;
            }
            this.§?!'§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§6a§.value);
         }
         while(true)
         {
            _loc1_.push(this.§?+§());
            this.§,"s§();
            if(this.§6a§.type == §`" §.§!#5§)
            {
               break;
            }
            if(this.§6a§.type == §`" §.§>"E§)
            {
               this.§,"s§();
               if(!this.§%Y§)
               {
                  if(this.§6a§.type == §`" §.§!#5§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§?!'§.parseError("Expecting ] or , but found " + this.§6a§.value);
            }
         }
         return _loc1_;
      }
      
      private function §3#$§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§,"s§();
         if(this.§6a§.type == §`" §.§2M§)
         {
            return _loc1_;
         }
         if(!this.§%Y§ && this.§6a§.type == §`" §.§>"E§)
         {
            this.§,"s§();
            if(this.§6a§.type == §`" §.§2M§)
            {
               return _loc1_;
            }
            this.§?!'§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§6a§.value);
         }
         while(true)
         {
            if(this.§6a§.type == §`" §.§!"I§)
            {
               _loc2_ = String(this.§6a§.value);
               this.§,"s§();
               if(this.§6a§.type == §`" §.§<8§)
               {
                  this.§,"s§();
                  _loc1_[_loc2_] = this.§?+§();
                  this.§,"s§();
                  if(this.§6a§.type == §`" §.§2M§)
                  {
                     break;
                  }
                  if(this.§6a§.type == §`" §.§>"E§)
                  {
                     this.§,"s§();
                     if(!this.§%Y§)
                     {
                        if(this.§6a§.type == §`" §.§2M§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§?!'§.parseError("Expecting } or , but found " + this.§6a§.value);
                  }
               }
               else
               {
                  this.§?!'§.parseError("Expecting : but found " + this.§6a§.value);
               }
            }
            else
            {
               this.§?!'§.parseError("Expecting string but found " + this.§6a§.value);
            }
         }
         return _loc1_;
      }
      
      private function §?+§() : Object
      {
         if(this.§6a§ == null)
         {
            this.§?!'§.parseError("Unexpected end of input");
         }
         switch(this.§6a§.type)
         {
            case §`" §.§0x§:
               return this.§3#$§();
            case §`" §.§[!u§:
               return this.§4v§();
            case §`" §.§!"I§:
            case §`" §.§[O§:
            case §`" §.TRUE:
            case §`" §.FALSE:
            case §`" §.NULL:
               return this.§6a§.value;
            case §`" §.§4!!§:
               if(!this.§%Y§)
               {
                  return this.§6a§.value;
               }
               this.§?!'§.parseError("Unexpected " + this.§6a§.value);
               break;
         }
         this.§?!'§.parseError("Unexpected " + this.§6a§.value);
         return null;
      }
   }
}
