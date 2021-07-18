package § ! §
{
   import §6![§.DisplayObject;
   import §6![§.Sprite;
   
   public class §+!Y§ extends §?n§
   {
       
      
      private var §`8§:§5!x§;
      
      private var §^!^§:String;
      
      public function §+!Y§(param1:String, param2:§5!x§, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param3);
         }
         do
         {
            this.§^!^§ = param1;
            do
            {
               this.§`8§ = param2;
            }
            while(!(_loc4_ || param2));
            
         }
         while(!_loc4_);
         
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Sprite = param1 as Sprite;
         if(_loc3_)
         {
            if(!_loc2_)
            {
               if(_loc3_)
               {
                  addr37:
                  if(param1)
                  {
                     if(!_loc3_)
                     {
                     }
                     return §+D§.§3!T§(this.§^!^§,this.§`8§,_loc2_);
                     addr43:
                  }
                  §§goto(addr43);
               }
               param1.dispose();
            }
            §§goto(addr43);
         }
         §§goto(addr37);
      }
   }
}
