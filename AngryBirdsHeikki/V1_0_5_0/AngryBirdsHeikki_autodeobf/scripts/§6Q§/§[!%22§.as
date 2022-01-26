package §6Q§
{
   public class §[!"§
   {
       
      
      private var §!w§:Boolean;
      
      private var value;
      
      private var §'!4§:§1d§;
      
      private var § i§:§0G§;
      
      public function §[!"§(param1:String, param2:Boolean)
      {
         super();
         this.§!w§ = param2;
         this.§'!4§ = new §1d§(param1,param2);
         this.§6?§();
         this.value = this.§5`§();
         if(param2 && this.§6?§() != null)
         {
            this.§'!4§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §6?§() : §0G§
      {
         return this.§ i§ = this.§'!4§.§<!`§();
      }
      
      private function §0t§() : Array
      {
         var _loc1_:Array = new Array();
         this.§6?§();
         if(this.§ i§.type == §+!-§.§-![§)
         {
            return _loc1_;
         }
         if(!this.§!w§ && this.§ i§.type == §+!-§.§^E§)
         {
            this.§6?§();
            if(this.§ i§.type == §+!-§.§-![§)
            {
               return _loc1_;
            }
            this.§'!4§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§ i§.value);
         }
         while(true)
         {
            _loc1_.push(this.§5`§());
            this.§6?§();
            if(this.§ i§.type == §+!-§.§-![§)
            {
               break;
            }
            if(this.§ i§.type == §+!-§.§^E§)
            {
               this.§6?§();
               if(!this.§!w§)
               {
                  if(this.§ i§.type == §+!-§.§-![§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§'!4§.parseError("Expecting ] or , but found " + this.§ i§.value);
            }
         }
         return _loc1_;
      }
      
      private function §+F§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§6?§();
         if(this.§ i§.type == §+!-§.§?y§)
         {
            return _loc1_;
         }
         if(!this.§!w§ && this.§ i§.type == §+!-§.§^E§)
         {
            this.§6?§();
            if(this.§ i§.type == §+!-§.§?y§)
            {
               return _loc1_;
            }
            this.§'!4§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§ i§.value);
         }
         while(true)
         {
            if(this.§ i§.type == §+!-§.§^!O§)
            {
               _loc2_ = String(this.§ i§.value);
               this.§6?§();
               if(this.§ i§.type == §+!-§.§0l§)
               {
                  this.§6?§();
                  _loc1_[_loc2_] = this.§5`§();
                  this.§6?§();
                  if(this.§ i§.type == §+!-§.§?y§)
                  {
                     break;
                  }
                  if(this.§ i§.type == §+!-§.§^E§)
                  {
                     this.§6?§();
                     if(!this.§!w§)
                     {
                        if(this.§ i§.type == §+!-§.§?y§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§'!4§.parseError("Expecting } or , but found " + this.§ i§.value);
                  }
               }
               else
               {
                  this.§'!4§.parseError("Expecting : but found " + this.§ i§.value);
               }
            }
            else
            {
               this.§'!4§.parseError("Expecting string but found " + this.§ i§.value);
            }
         }
         return _loc1_;
      }
      
      private function §5`§() : Object
      {
         if(this.§ i§ == null)
         {
            this.§'!4§.parseError("Unexpected end of input");
         }
         switch(this.§ i§.type)
         {
            case §+!-§.§2!-§:
               return this.§+F§();
            case §+!-§.§ !5§:
               return this.§0t§();
            case §+!-§.§^!O§:
            case §+!-§.§6J§:
            case §+!-§.TRUE:
            case §+!-§.FALSE:
            case §+!-§.§!!S§:
               return this.§ i§.value;
            case §+!-§.§"!V§:
               if(!this.§!w§)
               {
                  return this.§ i§.value;
               }
               this.§'!4§.parseError("Unexpected " + this.§ i§.value);
               break;
         }
         this.§'!4§.parseError("Unexpected " + this.§ i§.value);
         return null;
      }
   }
}
