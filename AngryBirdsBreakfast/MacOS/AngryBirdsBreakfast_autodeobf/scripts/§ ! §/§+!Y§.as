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
         super(param3);
         this.§^!^§ = param1;
         this.§`8§ = param2;
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:Sprite = param1 as Sprite;
         if(!_loc2_)
         {
            if(param1)
            {
               param1.dispose();
            }
         }
         return §+D§.§3!T§(this.§^!^§,this.§`8§,_loc2_);
      }
   }
}
