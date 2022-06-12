package §'!O§
{
   import flash.utils.Dictionary;
   
   public class §=!w§
   {
       
      
      private var §8!2§:String = "";
      
      private var mName:String = "";
      
      private var §[!9§:String = "";
      
      private var §&!1§:String = "";
      
      private var §`<§:String = "";
      
      private var §class§:Array = null;
      
      private var §+s§:int = 0;
      
      private var §%!E§:Array = null;
      
      private var §,!@§:Array;
      
      private var § "1§:Array;
      
      private var §2!`§:int = 0;
      
      private var §@[§:Dictionary;
      
      public function §=!w§()
      {
         this.§@[§ = new Dictionary();
         super();
      }
      
      public function § !g§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §5!>§(param1:String) : Array
      {
         var _loc4_:String = null;
         var _loc2_:Array = new Array();
         var _loc3_:Number = 0;
         while(_loc3_ < this.levelsPerPage)
         {
            _loc4_ = param1 + "-" + (_loc3_ + 1);
            _loc2_.push(_loc4_);
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function §^O§(param1:int) : Object
      {
         return this.§,!@§[param1];
      }
      
      public function §]!§(param1:int) : String
      {
         return this.§ "1§[param1];
      }
      
      public function §5!l§(param1:String) : Boolean
      {
         return this.§&!c§().indexOf(param1) != -1;
      }
      
      public function §&!c§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§%!E§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§5!>§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§%!E§ = _loc1_;
            return _loc1_;
         }
         return this.§%!E§;
      }
      
      public function §>!3§(param1:String) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.pageIndexes.length)
         {
            _loc3_ = this.pageIndexes[_loc2_];
            if(param1.indexOf(_loc3_ + "-") == 0)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §7>§(param1:String) : String
      {
         var _loc4_:int = 0;
         var _loc2_:String = param1.substring(0,param1.indexOf("-"));
         var _loc3_:int = parseInt(param1.substring(param1.indexOf("-") + 1));
         if(_loc3_ < this.levelsPerPage)
         {
            return _loc2_ + "-" + (_loc3_ + 1);
         }
         _loc4_ = 0;
         while(_loc4_ < this.pageIndexes.length)
         {
            if(this.pageIndexes[_loc4_] == _loc2_)
            {
               if(_loc4_ + 1 < this.pageIndexes.length)
               {
                  return this.pageIndexes[_loc4_ + 1] + "-" + 1;
               }
               break;
            }
            _loc4_++;
         }
         return null;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get menuImage() : String
      {
         return this.§[!9§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§[!9§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§+s§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§+s§ = param1;
      }
      
      public function get §'v§() : Array
      {
         return this.§%!E§;
      }
      
      public function get §]V§() : Array
      {
         return this.§,!@§;
      }
      
      public function set §]V§(param1:Array) : void
      {
         this.§,!@§ = param1;
      }
      
      public function get § !w§() : int
      {
         return this.§2!`§;
      }
      
      public function set § !w§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§2!`§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§class§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§class§ = param1;
      }
      
      public function §]s§(param1:String, param2:String) : void
      {
         this.§@[§[param1] = param2;
      }
      
      public function §]r§(param1:String) : String
      {
         return this.§@[§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§ "1§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§ "1§ = param1;
      }
      
      public function get §7t§() : String
      {
         return this.§&!1§;
      }
      
      public function set §7t§(param1:String) : void
      {
         this.§&!1§ = param1;
      }
      
      public function get §<"%§() : String
      {
         return this.§`<§;
      }
      
      public function set §<"%§(param1:String) : void
      {
         this.§`<§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§8!2§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§8!2§ = param1;
      }
   }
}
