package §4y§
{
   import §+!c§.§9"H§;
   
   public class Items
   {
      
      private static var §1!y§:XML;
       
      
      private var §@"4§:Vector.<§]"6§> = null;
      
      private var §break§:Vector.<String> = null;
      
      private var §+?§:Array = null;
      
      public function Items()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
         do
         {
            this.§`!I§();
         }
         while(_loc1_ && _loc2_);
         
      }
      
      public function get §"!o§() : Vector.<String>
      {
         return this.§break§;
      }
      
      public function get §`!s§() : Vector.<§]"6§>
      {
         return this.§@"4§;
      }
      
      private function §`!I§() : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc1_:XML = null;
         var _loc2_:String = null;
         var _loc3_:XML = null;
         var _loc4_:Item = null;
         if(!(_loc9_ && _loc3_))
         {
            this.§@"4§ = new Vector.<§]"6§>();
         }
         loop0:
         while(true)
         {
            this.§+?§ = new Array();
            loop1:
            while(true)
            {
               addr50:
               while(true)
               {
                  this.§break§ = new Vector.<String>();
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      public function get §9"1§() : Array
      {
         return this.§+?§;
      }
      
      public function §&!w§(param1:String) : Array
      {
         return this.§+?§[param1];
      }
      
      public function §3"[§(param1:String) : Item
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:§]"6§ = null;
         var _loc3_:* = null;
         var _loc4_:Item = null;
         for each(_loc2_ in this.§@"4§)
         {
            if(!(_loc9_ && this))
            {
               §§push(_loc2_.name);
               if(!(_loc9_ && _loc2_))
               {
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
               if(_loc10_)
               {
                  var _loc7_:int = 0;
                  if(_loc10_)
                  {
                     for each(_loc4_ in this.§+?§[_loc3_])
                     {
                        if(_loc4_.§&N§.toUpperCase() == param1.toUpperCase())
                        {
                           if(!(_loc9_ && this))
                           {
                              return _loc4_;
                           }
                        }
                     }
                  }
               }
            }
         }
         return null;
      }
   }
}
