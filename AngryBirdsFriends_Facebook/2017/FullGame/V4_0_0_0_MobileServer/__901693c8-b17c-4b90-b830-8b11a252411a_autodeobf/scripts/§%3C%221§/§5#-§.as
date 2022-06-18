package §<"1§
{
   import §%#A§.§,#w§;
   
   public class §5#-§
   {
      
      public static const §;I§:int = 0;
      
      public static const §1#>§:int = 1;
      
      public static const §!#b§:int = 2;
       
      
      public var §3"f§:Array;
      
      public var §8![§:int;
      
      public var §7#n§:int;
      
      public var §;!p§:String;
      
      public var each:String;
      
      public function §5#-§(param1:int, param2:String)
      {
         super();
         this.§7#n§ = param1;
         this.§;!p§ = param2;
         this.§3"f§ = new Array();
      }
      
      public function §#"4§(param1:§,#w§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§3"f§[this.§3"f§.length] = param1;
      }
      
      public function §'R§(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         this.each = param1;
         var _loc2_:String = param1.toUpperCase();
         if(this.§7#n§ == §;I§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§3"f§.length)
            {
               if((this.§3"f§[_loc3_] as §,#w§).upperCaseName == _loc2_)
               {
                  (this.§3"f§[_loc3_] as §,#w§).setComponentState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§3"f§[_loc3_] as §,#w§).§;!M§ == §@!N§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§3"f§[_loc3_] as §,#w§).setComponentState(§@!N§.§null§);
               }
               _loc3_++;
            }
         }
         if(this.§7#n§ == §!#b§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§3"f§.length)
            {
               if((this.§3"f§[_loc3_] as §,#w§).upperCaseName == _loc2_)
               {
                  if((this.§3"f§[_loc3_] as §,#w§).§;!M§ == §@!N§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§3"f§[_loc3_] as §,#w§).setComponentState(§@!N§.§null§);
                  }
                  else if((this.§3"f§[_loc3_] as §,#w§).§;!M§ == §@!N§.§null§)
                  {
                     if(this.§8",§().length < this.§8![§)
                     {
                        (this.§3"f§[_loc3_] as §,#w§).setComponentState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§8",§().length >= this.§8![§)
               {
                  _loc4_ = 0;
                  while(_loc4_ < this.§3"f§.length)
                  {
                     if((this.§3"f§[_loc4_] as §,#w§).§;!M§ == §@!N§.§null§)
                     {
                        (this.§3"f§[_loc4_] as §,#w§).setComponentState(§@!N§.COMPONENT_STATE_DISABLED);
                     }
                     _loc4_++;
                  }
               }
               else
               {
                  _loc4_ = 0;
                  while(_loc4_ < this.§3"f§.length)
                  {
                     if((this.§3"f§[_loc4_] as §,#w§).§;!M§ == §@!N§.COMPONENT_STATE_DISABLED)
                     {
                        (this.§3"f§[_loc4_] as §,#w§).setComponentState(§@!N§.§null§);
                     }
                     _loc4_++;
                  }
               }
               _loc3_++;
            }
         }
      }
      
      public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§3"f§.length)
         {
            (this.§3"f§[_loc3_] as §,#w§).setEnabled(param1,param2);
            _loc3_++;
         }
      }
      
      public function §5#=§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§3"f§.length)
         {
            (this.§3"f§[_loc1_] as §,#w§).setComponentState(§@!N§.§null§);
            _loc1_++;
         }
      }
      
      public function §6q§(param1:Number) : void
      {
         this.§8![§ = param1;
         if(param1 == 1)
         {
            this.§7#n§ = §;I§;
         }
         else
         {
            this.§7#n§ = §!#b§;
         }
      }
      
      public function §'!C§(param1:Array) : void
      {
         this.§5#=§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§'R§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §8",§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§3"f§.length)
         {
            if((this.§3"f§[_loc2_] as §,#w§).§;!M§ == §@!N§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§3"f§[_loc2_] as §,#w§).name);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
