package §]!"§
{
   import §+!J§.§""A§;
   import §1"b§.§7",§;
   import §6#§.§#!z§;
   import §6#§.§7#C§;
   import §6=§.§+!,§;
   import com.furusystems.dconsole2.DConsole;
   import flash.utils.Dictionary;
   
   public class §+"d§
   {
       
      
      private var §0^§:Dictionary;
      
      private var §[![§:DConsole;
      
      private var §9!T§:§7#C§;
      
      private var §'"F§:uint = 0;
      
      public function §+"d§(param1:DConsole, param2:§7#C§)
      {
         this.§0^§ = new Dictionary(true);
         super();
         this.§9!T§ = param2;
         this.§[![§ = param1;
         param1.§]"z§.addCallback(§""A§.§2"d§,this.§0!5§);
      }
      
      private function get §?"Q§() : uint
      {
         return this.§'"F§++;
      }
      
      private function §0!5§(param1:§7",§) : void
      {
         this.§0^§["this"] = §#!z§(param1.data).§5#L§;
      }
      
      public function §0"&§(param1:String) : void
      {
         var name:String = param1;
         try
         {
            delete this.§0^§[name];
            this.§[![§.§""W§("Cleared reference " + name,§+!,§.§>y§);
            this.§%!a§();
         }
         catch(e:Error)
         {
            §[![§.§""W§("No such reference",§+!,§.ERROR);
         }
      }
      
      public function §4#A§(param1:*, param2:String = null) : void
      {
         var t:Object = null;
         var target:* = param1;
         var id:String = param2;
         try
         {
            t = this.§9!T§.§@<§(target);
         }
         catch(e:Error)
         {
            t = target;
         }
         if(!t)
         {
            throw new Error("Invalid target");
         }
         if(!id)
         {
            id = "ref" + this.§?"Q§;
         }
         this.§0^§[id] = t;
         this.§%!a§();
      }
      
      public function getReference(param1:String = null) : void
      {
         if(!param1)
         {
            param1 = "ref" + this.§?"Q§;
         }
         this.§0^§[param1] = this.§9!T§.§0%§.§5#L§;
         this.§%!a§();
      }
      
      public function §2_§(param1:*) : void
      {
         var _loc2_:String = "r" + this.§?"Q§;
         this.§0^§[_loc2_] = param1;
         this.§%!a§();
      }
      
      public function §+"D§() : void
      {
         this.§0^§ = new Dictionary(true);
         this.§[![§.§""W§("References cleared",§+!,§.§>y§);
      }
      
      public function §%!a§() : void
      {
         var _loc1_:* = undefined;
         this.§[![§.§""W§("Stored references: ");
         for(_loc1_ in this.§0^§)
         {
            this.§[![§.§""W§("\t" + _loc1_.toString() + " : " + this.§0^§[_loc1_].toString());
         }
      }
      
      public function §9#R§(param1:String) : void
      {
         if(this.§0^§[param1])
         {
            this.§9!T§.§4"i§(this.§0^§[param1]);
            return;
         }
         throw new Error("No such reference");
      }
      
      public function §]#9§(param1:Array) : Array
      {
         var _loc3_:String = null;
         var _loc4_:Boolean = false;
         var _loc5_:* = undefined;
         var _loc2_:int = 0;
         for(; _loc2_ < param1.length; _loc2_++)
         {
            _loc3_ = param1[_loc2_];
            if(this.§0^§[_loc3_] != null)
            {
               if(this.§0^§[_loc3_] is Function)
               {
                  param1[_loc2_] = this.§0^§[_loc3_]();
               }
               else
               {
                  param1[_loc2_] = this.§0^§[_loc3_];
               }
            }
            else
            {
               try
               {
                  _loc4_ = false;
                  if(_loc3_.charAt(0) == "@")
                  {
                     _loc3_ = _loc3_.slice(1,_loc3_.length);
                     _loc4_ = true;
                  }
                  if((_loc5_ = this.§9!T§.§@<§(_loc3_)) is Function || _loc4_)
                  {
                     param1[_loc2_] = _loc5_;
                  }
               }
               catch(e:Error)
               {
                  continue;
               }
            }
         }
         return param1;
      }
   }
}
