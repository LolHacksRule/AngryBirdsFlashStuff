package §finally§
{
   import flash.utils.Dictionary;
   
   public class §?_§
   {
       
      
      private var §4!o§:String = "";
      
      private var mName:String = "";
      
      private var §2!F§:String = "";
      
      private var §3!^§:String = "";
      
      private var §%_§:String = "";
      
      private var §5Q§:Array = null;
      
      private var §70§:int = 0;
      
      private var §@f§:Array = null;
      
      private var §,v§:Array;
      
      private var §?!?§:Array;
      
      private var §1!=§:int = 0;
      
      private var §;+§:Dictionary;
      
      public function §?_§()
      {
         this.§;+§ = new Dictionary();
         super();
      }
      
      public function §3J§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §!>§(param1:String) : Array
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
      
      public function §]!f§(param1:int) : Object
      {
         return this.§,v§[param1];
      }
      
      public function §%!P§(param1:int) : String
      {
         return this.§?!?§[param1];
      }
      
      public function §"!B§(param1:String) : Boolean
      {
         return this.§%q§().indexOf(param1) != -1;
      }
      
      public function §%q§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§@f§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§!>§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§@f§ = _loc1_;
            return _loc1_;
         }
         return this.§@f§;
      }
      
      public function §@l§(param1:String) : int
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
      
      public function §4!c§(param1:String) : String
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
         return this.§2!F§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§2!F§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§70§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§70§ = param1;
      }
      
      public function get §]!2§() : Array
      {
         return this.§@f§;
      }
      
      public function get §;W§() : Array
      {
         return this.§,v§;
      }
      
      public function set §;W§(param1:Array) : void
      {
         this.§,v§ = param1;
      }
      
      public function get §'%§() : int
      {
         return this.§1!=§;
      }
      
      public function set §'%§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§1!=§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§5Q§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§5Q§ = param1;
      }
      
      public function §%!c§(param1:String, param2:String) : void
      {
         this.§;+§[param1] = param2;
      }
      
      public function §<!f§(param1:String) : String
      {
         return this.§;+§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§?!?§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§?!?§ = param1;
      }
      
      public function get §`!f§() : String
      {
         return this.§3!^§;
      }
      
      public function set §`!f§(param1:String) : void
      {
         this.§3!^§ = param1;
      }
      
      public function get §^!3§() : String
      {
         return this.§%_§;
      }
      
      public function set §^!3§(param1:String) : void
      {
         this.§%_§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§4!o§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§4!o§ = param1;
      }
   }
}
